import 'package:json_annotation/json_annotation.dart';

part 'email.g.dart';

@JsonSerializable()
class Email {
  const Email({
    this.id = 0,
    this.code = '',
    required this.mail,
    this.verified = false,
  });

  final int id;
  final String code;
  final String mail;
  final bool verified;

  /// Copy method to create a new instance with updated properties
  Email copyWith({
    int? id,
    String? code,
    String? mail,
    bool? verified,
  }) {
    return Email(
      id: id ?? this.id,
      code: code ?? this.code,
      mail: mail ?? this.mail,
      verified: verified ?? this.verified,
    );
  }

  factory Email.fromJson(Map<String, dynamic> json) {
    return _$EmailFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EmailToJson(this);
}
