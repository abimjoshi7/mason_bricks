// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDTOImpl _$$UserDTOImplFromJson(Map<String, dynamic> json) =>
    _$UserDTOImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      userToken: json['token'] as String,
    );

Map<String, dynamic> _$$UserDTOImplToJson(_$UserDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'token': instance.userToken,
    };
