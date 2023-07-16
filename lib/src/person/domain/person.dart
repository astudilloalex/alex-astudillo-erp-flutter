import 'package:alex_astudillo_erp/src/gender/domain/gender.dart';
import 'package:alex_astudillo_erp/src/person_document_type/domain/person_document_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable()
class Person {
  const Person({
    this.id = 0,
    required this.documentTypeId,
    this.genderId,
    required this.idCard,
    this.firstName,
    this.lastName,
    this.socialReason,
    this.birthdate,
    this.juridicalPerson = false,
    this.documentType,
    this.gender,
  });

  final int id;
  final int documentTypeId;
  final int? genderId;
  final String idCard;
  final String? firstName;
  final String? lastName;
  final String? socialReason;
  final DateTime? birthdate;
  final bool juridicalPerson;
  final PersonDocumentType? documentType;
  final Gender? gender;

  // Copy method to create a new instance with updated properties
  Person copyWith({
    int? id,
    int? documentTypeId,
    int? genderId,
    String? idCard,
    String? firstName,
    String? lastName,
    String? socialReason,
    DateTime? birthdate,
    bool? juridicalPerson,
    PersonDocumentType? documentType,
    Gender? gender,
  }) {
    return Person(
      id: id ?? this.id,
      documentTypeId: documentTypeId ?? this.documentTypeId,
      genderId: genderId ?? this.genderId,
      idCard: idCard ?? this.idCard,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      socialReason: socialReason ?? this.socialReason,
      birthdate: birthdate ?? this.birthdate,
      juridicalPerson: juridicalPerson ?? this.juridicalPerson,
      documentType: documentType ?? this.documentType,
      gender: gender ?? this.gender,
    );
  }

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
