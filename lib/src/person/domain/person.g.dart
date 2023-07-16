// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      id: json['id'] as int? ?? 0,
      documentTypeId: json['documentTypeId'] as int,
      genderId: json['genderId'] as int?,
      idCard: json['idCard'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      socialReason: json['socialReason'] as String?,
      birthdate: json['birthdate'] == null
          ? null
          : DateTime.parse(json['birthdate'] as String),
      juridicalPerson: json['juridicalPerson'] as bool? ?? false,
      documentType: json['documentType'] == null
          ? null
          : PersonDocumentType.fromJson(
              json['documentType'] as Map<String, dynamic>,
            ),
      gender: json['gender'] == null
          ? null
          : Gender.fromJson(json['gender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'id': instance.id,
      'documentTypeId': instance.documentTypeId,
      'genderId': instance.genderId,
      'idCard': instance.idCard,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'socialReason': instance.socialReason,
      'birthdate': instance.birthdate?.toIso8601String(),
      'juridicalPerson': instance.juridicalPerson,
      'documentType': instance.documentType,
      'gender': instance.gender,
    };
