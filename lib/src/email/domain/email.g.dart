// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Email _$EmailFromJson(Map<String, dynamic> json) => Email(
      id: json['id'] as int? ?? 0,
      code: json['code'] as String? ?? '',
      mail: json['mail'] as String,
      verified: json['verified'] as bool? ?? false,
    );

Map<String, dynamic> _$EmailToJson(Email instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'mail': instance.mail,
      'verified': instance.verified,
    };
