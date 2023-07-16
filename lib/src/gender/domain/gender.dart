import 'package:json_annotation/json_annotation.dart';

part 'gender.g.dart';

@JsonSerializable()
class Gender {
  const Gender({
    this.id = 0,
    this.code = '',
    required this.name,
    this.active = true,
    this.creationDate,
    this.updateDate,
  });

  final int id;
  final String code;
  final String name;
  final bool active;
  final DateTime? creationDate;
  final DateTime? updateDate;

  /// Copy method to create a new instance with updated properties
  Gender copyWith({
    int? id,
    String? code,
    String? name,
    bool? active,
    DateTime? creationDate,
    DateTime? updateDate,
  }) {
    return Gender(
      id: id ?? this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      active: active ?? this.active,
      creationDate: creationDate ?? this.creationDate,
      updateDate: updateDate ?? this.updateDate,
    );
  }

  factory Gender.fromJson(Map<String, dynamic> json) => _$GenderFromJson(json);

  Map<String, dynamic> toJson() => _$GenderToJson(this);
}
