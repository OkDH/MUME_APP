// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
class _$AccountTearOff {
  const _$AccountTearOff();

  _Account call(
      {int? accountId,
      int? memberId,
      String? accountAlias,
      int? accountOrder,
      String? registeredDate,
      bool? isDeleted,
      double? seed,
      double? feesPer,
      String? updatedDate,
      String? kskyjUpdateDate}) {
    return _Account(
      accountId: accountId,
      memberId: memberId,
      accountAlias: accountAlias,
      accountOrder: accountOrder,
      registeredDate: registeredDate,
      isDeleted: isDeleted,
      seed: seed,
      feesPer: feesPer,
      updatedDate: updatedDate,
      kskyjUpdateDate: kskyjUpdateDate,
    );
  }

  Account fromJson(Map<String, Object?> json) {
    return Account.fromJson(json);
  }
}

/// @nodoc
const $Account = _$AccountTearOff();

/// @nodoc
mixin _$Account {
  int? get accountId => throw _privateConstructorUsedError;
  int? get memberId => throw _privateConstructorUsedError;
  String? get accountAlias => throw _privateConstructorUsedError;
  int? get accountOrder => throw _privateConstructorUsedError;
  String? get registeredDate => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  double? get seed => throw _privateConstructorUsedError;
  double? get feesPer => throw _privateConstructorUsedError;
  String? get updatedDate => throw _privateConstructorUsedError;
  String? get kskyjUpdateDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res>;
  $Res call(
      {int? accountId,
      int? memberId,
      String? accountAlias,
      int? accountOrder,
      String? registeredDate,
      bool? isDeleted,
      double? seed,
      double? feesPer,
      String? updatedDate,
      String? kskyjUpdateDate});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res> implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  final Account _value;
  // ignore: unused_field
  final $Res Function(Account) _then;

  @override
  $Res call({
    Object? accountId = freezed,
    Object? memberId = freezed,
    Object? accountAlias = freezed,
    Object? accountOrder = freezed,
    Object? registeredDate = freezed,
    Object? isDeleted = freezed,
    Object? seed = freezed,
    Object? feesPer = freezed,
    Object? updatedDate = freezed,
    Object? kskyjUpdateDate = freezed,
  }) {
    return _then(_value.copyWith(
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int?,
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
      accountAlias: accountAlias == freezed
          ? _value.accountAlias
          : accountAlias // ignore: cast_nullable_to_non_nullable
              as String?,
      accountOrder: accountOrder == freezed
          ? _value.accountOrder
          : accountOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      registeredDate: registeredDate == freezed
          ? _value.registeredDate
          : registeredDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: isDeleted == freezed
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      seed: seed == freezed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as double?,
      feesPer: feesPer == freezed
          ? _value.feesPer
          : feesPer // ignore: cast_nullable_to_non_nullable
              as double?,
      updatedDate: updatedDate == freezed
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      kskyjUpdateDate: kskyjUpdateDate == freezed
          ? _value.kskyjUpdateDate
          : kskyjUpdateDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$AccountCopyWith(_Account value, $Res Function(_Account) then) =
      __$AccountCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? accountId,
      int? memberId,
      String? accountAlias,
      int? accountOrder,
      String? registeredDate,
      bool? isDeleted,
      double? seed,
      double? feesPer,
      String? updatedDate,
      String? kskyjUpdateDate});
}

/// @nodoc
class __$AccountCopyWithImpl<$Res> extends _$AccountCopyWithImpl<$Res>
    implements _$AccountCopyWith<$Res> {
  __$AccountCopyWithImpl(_Account _value, $Res Function(_Account) _then)
      : super(_value, (v) => _then(v as _Account));

  @override
  _Account get _value => super._value as _Account;

  @override
  $Res call({
    Object? accountId = freezed,
    Object? memberId = freezed,
    Object? accountAlias = freezed,
    Object? accountOrder = freezed,
    Object? registeredDate = freezed,
    Object? isDeleted = freezed,
    Object? seed = freezed,
    Object? feesPer = freezed,
    Object? updatedDate = freezed,
    Object? kskyjUpdateDate = freezed,
  }) {
    return _then(_Account(
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int?,
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
      accountAlias: accountAlias == freezed
          ? _value.accountAlias
          : accountAlias // ignore: cast_nullable_to_non_nullable
              as String?,
      accountOrder: accountOrder == freezed
          ? _value.accountOrder
          : accountOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      registeredDate: registeredDate == freezed
          ? _value.registeredDate
          : registeredDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: isDeleted == freezed
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      seed: seed == freezed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as double?,
      feesPer: feesPer == freezed
          ? _value.feesPer
          : feesPer // ignore: cast_nullable_to_non_nullable
              as double?,
      updatedDate: updatedDate == freezed
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      kskyjUpdateDate: kskyjUpdateDate == freezed
          ? _value.kskyjUpdateDate
          : kskyjUpdateDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Account with DiagnosticableTreeMixin implements _Account {
  _$_Account(
      {this.accountId,
      this.memberId,
      this.accountAlias,
      this.accountOrder,
      this.registeredDate,
      this.isDeleted,
      this.seed,
      this.feesPer,
      this.updatedDate,
      this.kskyjUpdateDate});

  factory _$_Account.fromJson(Map<String, dynamic> json) =>
      _$$_AccountFromJson(json);

  @override
  final int? accountId;
  @override
  final int? memberId;
  @override
  final String? accountAlias;
  @override
  final int? accountOrder;
  @override
  final String? registeredDate;
  @override
  final bool? isDeleted;
  @override
  final double? seed;
  @override
  final double? feesPer;
  @override
  final String? updatedDate;
  @override
  final String? kskyjUpdateDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Account(accountId: $accountId, memberId: $memberId, accountAlias: $accountAlias, accountOrder: $accountOrder, registeredDate: $registeredDate, isDeleted: $isDeleted, seed: $seed, feesPer: $feesPer, updatedDate: $updatedDate, kskyjUpdateDate: $kskyjUpdateDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Account'))
      ..add(DiagnosticsProperty('accountId', accountId))
      ..add(DiagnosticsProperty('memberId', memberId))
      ..add(DiagnosticsProperty('accountAlias', accountAlias))
      ..add(DiagnosticsProperty('accountOrder', accountOrder))
      ..add(DiagnosticsProperty('registeredDate', registeredDate))
      ..add(DiagnosticsProperty('isDeleted', isDeleted))
      ..add(DiagnosticsProperty('seed', seed))
      ..add(DiagnosticsProperty('feesPer', feesPer))
      ..add(DiagnosticsProperty('updatedDate', updatedDate))
      ..add(DiagnosticsProperty('kskyjUpdateDate', kskyjUpdateDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Account &&
            const DeepCollectionEquality().equals(other.accountId, accountId) &&
            const DeepCollectionEquality().equals(other.memberId, memberId) &&
            const DeepCollectionEquality()
                .equals(other.accountAlias, accountAlias) &&
            const DeepCollectionEquality()
                .equals(other.accountOrder, accountOrder) &&
            const DeepCollectionEquality()
                .equals(other.registeredDate, registeredDate) &&
            const DeepCollectionEquality().equals(other.isDeleted, isDeleted) &&
            const DeepCollectionEquality().equals(other.seed, seed) &&
            const DeepCollectionEquality().equals(other.feesPer, feesPer) &&
            const DeepCollectionEquality()
                .equals(other.updatedDate, updatedDate) &&
            const DeepCollectionEquality()
                .equals(other.kskyjUpdateDate, kskyjUpdateDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accountId),
      const DeepCollectionEquality().hash(memberId),
      const DeepCollectionEquality().hash(accountAlias),
      const DeepCollectionEquality().hash(accountOrder),
      const DeepCollectionEquality().hash(registeredDate),
      const DeepCollectionEquality().hash(isDeleted),
      const DeepCollectionEquality().hash(seed),
      const DeepCollectionEquality().hash(feesPer),
      const DeepCollectionEquality().hash(updatedDate),
      const DeepCollectionEquality().hash(kskyjUpdateDate));

  @JsonKey(ignore: true)
  @override
  _$AccountCopyWith<_Account> get copyWith =>
      __$AccountCopyWithImpl<_Account>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountToJson(this);
  }
}

abstract class _Account implements Account {
  factory _Account(
      {int? accountId,
      int? memberId,
      String? accountAlias,
      int? accountOrder,
      String? registeredDate,
      bool? isDeleted,
      double? seed,
      double? feesPer,
      String? updatedDate,
      String? kskyjUpdateDate}) = _$_Account;

  factory _Account.fromJson(Map<String, dynamic> json) = _$_Account.fromJson;

  @override
  int? get accountId;
  @override
  int? get memberId;
  @override
  String? get accountAlias;
  @override
  int? get accountOrder;
  @override
  String? get registeredDate;
  @override
  bool? get isDeleted;
  @override
  double? get seed;
  @override
  double? get feesPer;
  @override
  String? get updatedDate;
  @override
  String? get kskyjUpdateDate;
  @override
  @JsonKey(ignore: true)
  _$AccountCopyWith<_Account> get copyWith =>
      throw _privateConstructorUsedError;
}
