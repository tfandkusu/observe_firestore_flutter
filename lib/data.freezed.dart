// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MemberTearOff {
  const _$MemberTearOff();

// ignore: unused_element
  _Member call({String name, String division}) {
    return _Member(
      name: name,
      division: division,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Member = _$MemberTearOff();

/// @nodoc
mixin _$Member {
  String get name;
  String get division;

  $MemberCopyWith<Member> get copyWith;
}

/// @nodoc
abstract class $MemberCopyWith<$Res> {
  factory $MemberCopyWith(Member value, $Res Function(Member) then) =
      _$MemberCopyWithImpl<$Res>;
  $Res call({String name, String division});
}

/// @nodoc
class _$MemberCopyWithImpl<$Res> implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._value, this._then);

  final Member _value;
  // ignore: unused_field
  final $Res Function(Member) _then;

  @override
  $Res call({
    Object name = freezed,
    Object division = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      division: division == freezed ? _value.division : division as String,
    ));
  }
}

/// @nodoc
abstract class _$MemberCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$MemberCopyWith(_Member value, $Res Function(_Member) then) =
      __$MemberCopyWithImpl<$Res>;
  @override
  $Res call({String name, String division});
}

/// @nodoc
class __$MemberCopyWithImpl<$Res> extends _$MemberCopyWithImpl<$Res>
    implements _$MemberCopyWith<$Res> {
  __$MemberCopyWithImpl(_Member _value, $Res Function(_Member) _then)
      : super(_value, (v) => _then(v as _Member));

  @override
  _Member get _value => super._value as _Member;

  @override
  $Res call({
    Object name = freezed,
    Object division = freezed,
  }) {
    return _then(_Member(
      name: name == freezed ? _value.name : name as String,
      division: division == freezed ? _value.division : division as String,
    ));
  }
}

/// @nodoc
class _$_Member implements _Member {
  const _$_Member({this.name, this.division});

  @override
  final String name;
  @override
  final String division;

  @override
  String toString() {
    return 'Member(name: $name, division: $division)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Member &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.division, division) ||
                const DeepCollectionEquality()
                    .equals(other.division, division)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(division);

  @override
  _$MemberCopyWith<_Member> get copyWith =>
      __$MemberCopyWithImpl<_Member>(this, _$identity);
}

abstract class _Member implements Member {
  const factory _Member({String name, String division}) = _$_Member;

  @override
  String get name;
  @override
  String get division;
  @override
  _$MemberCopyWith<_Member> get copyWith;
}

/// @nodoc
class _$DivisionTearOff {
  const _$DivisionTearOff();

// ignore: unused_element
  _Division call({String division, List<String> names}) {
    return _Division(
      division: division,
      names: names,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Division = _$DivisionTearOff();

/// @nodoc
mixin _$Division {
  String get division;
  List<String> get names;

  $DivisionCopyWith<Division> get copyWith;
}

/// @nodoc
abstract class $DivisionCopyWith<$Res> {
  factory $DivisionCopyWith(Division value, $Res Function(Division) then) =
      _$DivisionCopyWithImpl<$Res>;
  $Res call({String division, List<String> names});
}

/// @nodoc
class _$DivisionCopyWithImpl<$Res> implements $DivisionCopyWith<$Res> {
  _$DivisionCopyWithImpl(this._value, this._then);

  final Division _value;
  // ignore: unused_field
  final $Res Function(Division) _then;

  @override
  $Res call({
    Object division = freezed,
    Object names = freezed,
  }) {
    return _then(_value.copyWith(
      division: division == freezed ? _value.division : division as String,
      names: names == freezed ? _value.names : names as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$DivisionCopyWith<$Res> implements $DivisionCopyWith<$Res> {
  factory _$DivisionCopyWith(_Division value, $Res Function(_Division) then) =
      __$DivisionCopyWithImpl<$Res>;
  @override
  $Res call({String division, List<String> names});
}

/// @nodoc
class __$DivisionCopyWithImpl<$Res> extends _$DivisionCopyWithImpl<$Res>
    implements _$DivisionCopyWith<$Res> {
  __$DivisionCopyWithImpl(_Division _value, $Res Function(_Division) _then)
      : super(_value, (v) => _then(v as _Division));

  @override
  _Division get _value => super._value as _Division;

  @override
  $Res call({
    Object division = freezed,
    Object names = freezed,
  }) {
    return _then(_Division(
      division: division == freezed ? _value.division : division as String,
      names: names == freezed ? _value.names : names as List<String>,
    ));
  }
}

/// @nodoc
class _$_Division implements _Division {
  const _$_Division({this.division, this.names});

  @override
  final String division;
  @override
  final List<String> names;

  @override
  String toString() {
    return 'Division(division: $division, names: $names)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Division &&
            (identical(other.division, division) ||
                const DeepCollectionEquality()
                    .equals(other.division, division)) &&
            (identical(other.names, names) ||
                const DeepCollectionEquality().equals(other.names, names)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(division) ^
      const DeepCollectionEquality().hash(names);

  @override
  _$DivisionCopyWith<_Division> get copyWith =>
      __$DivisionCopyWithImpl<_Division>(this, _$identity);
}

abstract class _Division implements Division {
  const factory _Division({String division, List<String> names}) = _$_Division;

  @override
  String get division;
  @override
  List<String> get names;
  @override
  _$DivisionCopyWith<_Division> get copyWith;
}
