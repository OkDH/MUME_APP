// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StateMap _$$_StateMapFromJson(Map<String, dynamic> json) => _$_StateMap(
      ingInfiniteCount: json['ingInfiniteCount'] as int?,
      sumInfiniteSeed: (json['sumInfiniteSeed'] as num?)?.toDouble(),
      sumAccountSeed: (json['sumAccountSeed'] as num?)?.toDouble(),
      sumInfiniteBuyPrice: (json['sumInfiniteBuyPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_StateMapToJson(_$_StateMap instance) =>
    <String, dynamic>{
      'ingInfiniteCount': instance.ingInfiniteCount,
      'sumInfiniteSeed': instance.sumInfiniteSeed,
      'sumAccountSeed': instance.sumAccountSeed,
      'sumInfiniteBuyPrice': instance.sumInfiniteBuyPrice,
    };
