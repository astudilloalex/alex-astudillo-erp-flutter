// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_document_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonDocumentType _$PersonDocumentTypeFromJson(Map<String, dynamic> json) =>
    PersonDocumentType(
      id: json['id'] as int? ?? 0,
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
    );

Map<String, dynamic> _$PersonDocumentTypeToJson(PersonDocumentType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'description': instance.description,
      'active': instance.active,
      'creationDate': instance.creationDate?.toIso8601String(),
      'updateDate': instance.updateDate?.toIso8601String(),
    };
