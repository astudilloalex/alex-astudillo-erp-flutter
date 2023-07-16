// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Role _$RoleFromJson(Map<String, dynamic> json) => Role(
      id: json['id'] as int? ?? 0,
      companyId: json['companyId'] as int,
      code: json['code'] as String? ?? '',
      name: json['name'] as String,
      description: json['description'] as String?,
      active: json['active'] as bool? ?? true,
      creationDate: json['creationDate'] == null
          ? null
          : DateTime.parse(json['creationDate'] as String),
      updateDate: json['updateDate'] == null
          ? null
          : DateTime.parse(json['updateDate'] as String),
      editable: json['editable'] as bool? ?? true,
      userId: json['userId'] as int? ?? 0,
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => Permission.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RoleToJson(Role instance) => <String, dynamic>{
      'id': instance.id,
      'companyId': instance.companyId,
      'code': instance.code,
      'name': instance.name,
      'description': instance.description,
      'active': instance.active,
      'creationDate': instance.creationDate?.toIso8601String(),
      'updateDate': instance.updateDate?.toIso8601String(),
      'editable': instance.editable,
      'userId': instance.userId,
      'company': instance.company,
      'permissions': instance.permissions,
    };
