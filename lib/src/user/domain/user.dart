import 'package:alex_astudillo_erp/src/email/domain/email.dart';
import 'package:alex_astudillo_erp/src/person/domain/person.dart';
import 'package:alex_astudillo_erp/src/role/domain/role.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  const User({
    this.personId = 0,
    this.emailId = 0,
    this.code = '',
    required this.username,
    required this.password,
    this.accountNonExpired = true,
    this.accountNonLocked = true,
    this.credentialsNonExpired = true,
    this.enabled = true,
    this.creationDate,
    this.updateDate,
    this.email,
    this.person,
    this.rolesNavigation,
  });

  final int personId;
  final int emailId;
  final String code;
  final String username;
  final String password;
  final bool accountNonExpired;
  final bool accountNonLocked;
  final bool credentialsNonExpired;
  final bool enabled;
  final DateTime? creationDate;
  final DateTime? updateDate;
  final Email? email;
  final Person? person;
  final List<Role>? rolesNavigation;

  // Copy method to create a new instance with updated properties
  User copyWith({
    int? personId,
    int? emailId,
    String? code,
    String? username,
    String? password,
    bool? accountNonExpired,
    bool? accountNonLocked,
    bool? credentialsNonExpired,
    bool? enabled,
    DateTime? creationDate,
    DateTime? updateDate,
    Email? email,
    Person? person,
    List<Role>? rolesNavigation,
  }) {
    return User(
      personId: personId ?? this.personId,
      emailId: emailId ?? this.emailId,
      code: code ?? this.code,
      username: username ?? this.username,
      password: password ?? this.password,
      accountNonExpired: accountNonExpired ?? this.accountNonExpired,
      accountNonLocked: accountNonLocked ?? this.accountNonLocked,
      credentialsNonExpired:
          credentialsNonExpired ?? this.credentialsNonExpired,
      enabled: enabled ?? this.enabled,
      creationDate: creationDate ?? this.creationDate,
      updateDate: updateDate ?? this.updateDate,
      email: email ?? this.email,
      person: person ?? this.person,
      rolesNavigation: rolesNavigation ?? this.rolesNavigation,
    );
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
