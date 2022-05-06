// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infinite_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InfiniteHistory _$$_InfiniteHistoryFromJson(Map<String, dynamic> json) =>
    _$_InfiniteHistory(
      infiniteHistoryId: json['infiniteHistoryId'] as int?,
      infiniteId: json['infiniteId'] as int?,
      tradeDate: json['tradeDate'] as String?,
      tradeType: json['tradeType'] as String?,
      unitPrice: (json['unitPrice'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      registeredType: json['registeredType'] as String?,
      registeredDate: json['registeredDate'] as String?,
      updatedDate: json['updatedDate'] as String?,
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$$_InfiniteHistoryToJson(_$_InfiniteHistory instance) =>
    <String, dynamic>{
      'infiniteHistoryId': instance.infiniteHistoryId,
      'infiniteId': instance.infiniteId,
      'tradeDate': instance.tradeDate,
      'tradeType': instance.tradeType,
      'unitPrice': instance.unitPrice,
      'quantity': instance.quantity,
      'registeredType': instance.registeredType,
      'registeredDate': instance.registeredDate,
      'updatedDate': instance.updatedDate,
      'isDeleted': instance.isDeleted,
    };
