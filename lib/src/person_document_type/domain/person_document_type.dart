import 'package:json_annotation/json_annotation.dart';

part 'person_document_type.g.dart';

@JsonSerializable()
class PersonDocumentType {
  const PersonDocumentType({
    this.id = 0,
    this.code = '',
    required this.name,
    this.description,
    this.active = true,
    this.creationDate,
    this.updateDate,
  });

  final int id;
  final String code;
  final String name;
  final String? description;
  final bool active;
  final DateTime? creationDate;
  final DateTime? updateDate;

  /// Copy method to create a new instance with updated properties.
  PersonDocumentType copyWith({
    int? id,
    String? code,
    String? name,
    String? description,
    bool? active,
    DateTime? creationDate,
    DateTime? updateDate,
  }) {
    return PersonDocumentType(
      id: id ?? this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description ?? this.description,
      active: active ?? this.active,
      creationDate: creationDate ?? this.creationDate,
      updateDate: updateDate ?? this.updateDate,
    );
  }

  factory PersonDocumentType.fromJson(Map<String, dynamic> json) {
    return _$PersonDocumentTypeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PersonDocumentTypeToJson(this);
}
