import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'support.dart';

part 'user_list_model.g.dart';

@JsonSerializable()
class UserListModel {
  int? page;
  @JsonKey(name: 'per_page')
  int? perPage;
  int? total;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  List<Datum>? data;
  Support? support;

  UserListModel({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
    this.support,
  });

  factory UserListModel.fromJson(Map<String, dynamic> json) {
    return _$UserListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserListModelToJson(this);
}
