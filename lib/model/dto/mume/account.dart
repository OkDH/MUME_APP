import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  factory Account({
    int?  accountId,
    int?  memberId,
    String?  accountAlias,
    int?  accountOrder,
    String?  registeredDate,
    bool?  isDeleted,
    double?  seed,
    double?  feesPer,
    String?  updatedDate,
    String?  kskyjUpdateDate,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
}