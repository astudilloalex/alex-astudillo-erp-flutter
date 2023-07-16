import 'package:alex_astudillo_erp/src/company/domain/company.dart';
import 'package:alex_astudillo_erp/src/permission/domain/permission.dart';
import 'package:json_annotation/json_annotation.dart';

part 'role.g.dart';

@JsonSerializable()
class Role {
  const Role({
    this.id = 0,
    required this.companyId,
    this.code = '',
    required this.name,
    this.description,
    this.active = true,
    this.creationDate,
    this.updateDate,
    this.editable = true,
    this.userId = 0,
    this.company,
    this.permissions,
  });

  final int id;
  final int companyId;
  final String code;
  final String name;
  final String? description;
  final bool active;
  final DateTime? creationDate;
  final DateTime? updateDate;
  final bool editable;
  final int userId;
  final Company? company;
  final List<Permission>? permissions;

  /// Copy method to create a new instance with updated properties
  Role copyWith({
    int? id,
    int? companyId,
    String? code,
    String? name,
    String? description,
    bool? active,
    DateTime? creationDate,
    DateTime? updateDate,
    bool? editable,
    int? userId,
    Company? company,
    List<Permission>? permissions,
  }) {
    return Role(
      id: id ?? this.id,
      companyId: companyId ?? this.companyId,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description ?? this.description,
      active: active ?? this.active,
      creationDate: creationDate ?? this.creationDate,
      updateDate: updateDate ?? this.updateDate,
      editable: editable ?? this.editable,
      userId: userId ?? this.userId,
      company: company ?? this.company,
      permissions: permissions ?? this.permissions,
    );
  }

  factory Role.fromJson(Map<String, dynamic> json) {
    return _$RoleFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RoleToJson(this);
}
