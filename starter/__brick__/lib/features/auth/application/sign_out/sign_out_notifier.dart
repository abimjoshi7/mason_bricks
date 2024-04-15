import 'package:promptlee/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/domain/value_objects.dart';
import '../../domain/auth_failure.dart';
import '../../infrastructure/auth_repository.dart';

part 'sign_out_notifier.freezed.dart';
part 'sign_out_state.dart';

class SignOutNotifier extends StateNotifier<SignOutState> {
  SignOutNotifier(this._repository) : super(const SignOutState.initial());

  final AuthRepository _repository;

  Future<void> signOut() async {
    state = const SignOutState.inProgress();
    final failureOrSuccess = await _repository.signOut();
    state = switch (failureOrSuccess) {
      Left<AuthFailure, Unit>(errorMsg: final error) =>
        SignOutState.failure(error!),
      Right<AuthFailure, Unit>(data: _) => SignOutState.success(),
    };
  }
}
