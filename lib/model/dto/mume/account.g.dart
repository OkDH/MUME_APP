// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$$_AccountFromJson(Map<String, dynamic> json) => _$_Account(
      accountId: json['accountId'] as int?,
      memberId: json['memberId'] as int?,
      accountAlias: json['accountAlias'] as String?,
      accountOrder: json['accountOrder'] as int?,
      registeredDate: json['registeredDate'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      seed: (json['seed'] as num?)?.toDouble(),
      feesPer: (json['feesPer'] as num?)?.toDouble(),
      updatedDate: json['updatedDate'] as String?,
      kskyjUpdateDate: json['kskyjUpdateDate'] as String?,
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'memberId': instance.memberId,
      'accountAlias': instance.accountAlias,
      'accountOrder': instance.accountOrder,
      'registeredDate': instance.registeredDate,
      'isDeleted': instance.isDeleted,
      'seed': instance.seed,
      'feesPer': instance.feesPer,
      'updatedDate': instance.updatedDate,
      'kskyjUpdateDate': instance.kskyjUpdateDate,
    };
