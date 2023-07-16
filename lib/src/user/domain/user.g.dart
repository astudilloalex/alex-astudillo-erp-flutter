// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      personId: json['personId'] as int? ?? 0,
      emailId: json['emailId'] as int? ?? 0,
      code: json['code'] as String? ?? '',
      username: json['username'] as String,
      password: json['password'] as String,
      accountNonExpired: json['accountNonExpired'] as bool? ?? true,
      accountNonLocked: json['accountNonLocked'] as bool? ?? true,
      credentialsNonExpired: json['credentialsNonExpired'] as bool? ?? true,
      enabled: json['enabled'] as bool? ?? true,
      creationDate: json['creationDate'] == null
          ? null
          : DateTime.parse(json['creationDate'] as String),
      updateDate: json['updateDate'] == null
          ? null
          : DateTime.parse(json['updateDate'] as String),
      email: json['email'] == null
          ? null
          : Email.fromJson(json['email'] as Map<String, dynamic>),
      person: json['person'] == null
          ? null
          : Person.fromJson(json['person'] as Map<String, dynamic>),
      rolesNavigation: (json['rolesNavigation'] as List<dynamic>?)
          ?.map((e) => Role.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'personId': instance.personId,
      'emailId': instance.emailId,
      'code': instance.code,
      'username': instance.username,
      'password': instance.password,
      'accountNonExpired': instance.accountNonExpired,
      'accountNonLocked': instance.accountNonLocked,
      'credentialsNonExpired': instance.credentialsNonExpired,
      'enabled': instance.enabled,
      'creationDate': instance.creationDate?.toIso8601String(),
      'updateDate': instance.updateDate?.toIso8601String(),
      'email': instance.email,
      'person': instance.person,
      'rolesNavigation': instance.rolesNavigation,
    };
