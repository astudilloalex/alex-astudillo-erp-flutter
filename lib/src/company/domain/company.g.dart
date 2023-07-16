// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      id: json['id'] as int? ?? 0,
      personId: json['personId'] as int? ?? 0,
      parentId: json['parentId'] as int?,
      code: json['code'] as String? ?? '',
      tradename: json['tradename'] as String,
      imageUrl: json['imageUrl'] as String?,
      keepAccount: json['keepAccount'] as bool? ?? false,
      specialTaxpayer: json['specialTaxpayer'] as bool? ?? false,
      active: json['active'] as bool? ?? true,
      creationDate: json['creationDate'] == null
          ? null
          : DateTime.parse(json['creationDate'] as String),
      updateDate: json['updateDate'] == null
          ? null
          : DateTime.parse(json['updateDate'] as String),
      userId: json['userId'] as int? ?? 0,
      parent: json['parent'] == null
          ? null
          : Company.fromJson(json['parent'] as Map<String, dynamic>),
      person: json['person'] == null
          ? null
          : Person.fromJson(json['person'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'id': instance.id,
      'personId': instance.personId,
      'parentId': instance.parentId,
      'code': instance.code,
      'tradename': instance.tradename,
      'imageUrl': instance.imageUrl,
      'keepAccount': instance.keepAccount,
      'specialTaxpayer': instance.specialTaxpayer,
      'active': instance.active,
      'creationDate': instance.creationDate?.toIso8601String(),
      'updateDate': instance.updateDate?.toIso8601String(),
      'userId': instance.userId,
      'parent': instance.parent,
      'person': instance.person,
    };
