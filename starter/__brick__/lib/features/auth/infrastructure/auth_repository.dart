import 'dart:io';

import 'package:flutter/services.dart';

import '../../../core/generics/result.dart';
import '../../core/infrastructure/exceptions.dart';
import '../domain/auth_failure.dart';
import 'auth_remote_service.dart';
import 'credentials_storage/credentials_storage.dart';

class AuthRepository {
  AuthRepository(
    this._credentialsStorage,
    this._remoteService,
  );

  final CredentialsStorage _credentialsStorage;
  final AuthRemoteService _remoteService;

  Future<bool> isSignedIn() =>
      getSignedInCredentials().then((credentials) => credentials != null);

  Future<Result<AuthFailure, Exception>> signOut() async {
    try {
      await _remoteService.signOut();
    } on RestApiException catch (e) {
      return Failure( exception: Exception(e.toString(),),);
    } on NoConnectionException {
      // Ignoring
    }

    return clearCredentialsStorage();
  }

  Future<Result<AuthFailure, Exception>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final emailStr = email;
      final passwordStr = password;

      final authResponse = await _remoteService.signIn(
        email: emailStr,
        password: passwordStr,
      );

      return authResponse.when(
        withToken: (token) async {
          await _credentialsStorage.save(token);
          return Failure(
            exception: Exception(),
          );
        },
        failure: (errorCode, message) => Failure(
            exception: Exception(message),
        statusCode: errorCode,
        ),
      );
    } on RestApiException catch (e) {
      return Failure(exception: Exception(e.toString()), statusCode: e.errorCode);
    } on NoConnectionException {
      return Failure(exception: SocketException("No Internet Connection"));
    }
  }

  Future<String?> getSignedInCredentials() async {
    try {
      final storedCredentials = await _credentialsStorage.read();

      return storedCredentials;
    } on PlatformException {
      return null;
    }
  }

  Future<Result<AuthFailure, Exception>> clearCredentialsStorage() async {
    try {
      await _credentialsStorage.clear();
      return Failure(
        exception: Exception(),
      );
    } on PlatformException {
      return Failure(exception: Exception(const AuthFailure.storage()));
    }
  }
}
