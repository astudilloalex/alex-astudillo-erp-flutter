import 'package:alex_astudillo_erp/src/person/domain/person.dart';
import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';

@JsonSerializable()
class Company {
  const Company({
    this.id = 0,
    this.personId = 0,
    this.parentId,
    this.code = '',
    required this.tradename,
    this.imageUrl,
    this.keepAccount = false,
    this.specialTaxpayer = false,
    this.active = true,
    this.creationDate,
    this.updateDate,
    this.userId = 0,
    this.parent,
    this.person,
  });

  final int id;
  final int personId;
  final int? parentId;
  final String code;
  final String tradename;
  final String? imageUrl;
  final bool keepAccount;
  final bool specialTaxpayer;
  final bool active;
  final DateTime? creationDate;
  final DateTime? updateDate;
  final int userId;
  final Company? parent;
  final Person? person;

  /// Copy method to create a new instance with updated properties
  Company copyWith({
    int? id,
    int? personId,
    int? parentId,
    String? code,
    String? tradename,
    String? imageUrl,
    bool? keepAccount,
    bool? specialTaxpayer,
    bool? active,
    DateTime? creationDate,
    DateTime? updateDate,
    int? userId,
    Company? parent,
    Person? person,
  }) {
    return Company(
      id: id ?? this.id,
      personId: personId ?? this.personId,
      parentId: parentId ?? this.parentId,
      code: code ?? this.code,
      tradename: tradename ?? this.tradename,
      imageUrl: imageUrl ?? this.imageUrl,
      keepAccount: keepAccount ?? this.keepAccount,
      specialTaxpayer: specialTaxpayer ?? this.specialTaxpayer,
      active: active ?? this.active,
      creationDate: creationDate ?? this.creationDate,
      updateDate: updateDate ?? this.updateDate,
      userId: userId ?? this.userId,
      parent: parent ?? this.parent,
      person: person ?? this.person,
    );
  }

  factory Company.fromJson(Map<String, dynamic> json) {
    return _$CompanyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}
