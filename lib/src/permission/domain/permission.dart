import 'package:json_annotation/json_annotation.dart';

part 'permission.g.dart';

@JsonSerializable()
class Permission {
  const Permission({
    this.id = 0,
    this.code = '',
    this.action = '',
    this.name = '',
    this.description = '',
    this.active = true,
  });

  final int id;
  final String code;
  final String action;
  final String name;
  final String description;
  final bool active;

  /// Copy method to create a new instance with updated properties
  Permission copyWith({
    int? id,
    String? code,
    String? action,
    String? name,
    String? description,
    bool? active,
  }) {
    return Permission(
      id: id ?? this.id,
      code: code ?? this.code,
      action: action ?? this.action,
      name: name ?? this.name,
      description: description ?? this.description,
      active: active ?? this.active,
    );
  }

  factory Permission.fromJson(Map<String, dynamic> json) {
    return _$PermissionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PermissionToJson(this);
}
