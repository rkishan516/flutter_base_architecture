// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginData {
  AppUser? get currUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginDataCopyWith<LoginData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDataCopyWith<$Res> {
  factory $LoginDataCopyWith(LoginData value, $Res Function(LoginData) then) =
      _$LoginDataCopyWithImpl<$Res, LoginData>;
  @useResult
  $Res call({AppUser? currUser});

  $AppUserCopyWith<$Res>? get currUser;
}

/// @nodoc
class _$LoginDataCopyWithImpl<$Res, $Val extends LoginData>
    implements $LoginDataCopyWith<$Res> {
  _$LoginDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currUser = freezed,
  }) {
    return _then(_value.copyWith(
      currUser: freezed == currUser
          ? _value.currUser
          : currUser // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get currUser {
    if (_value.currUser == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.currUser!, (value) {
      return _then(_value.copyWith(currUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginDataCopyWith<$Res> implements $LoginDataCopyWith<$Res> {
  factory _$$_LoginDataCopyWith(
          _$_LoginData value, $Res Function(_$_LoginData) then) =
      __$$_LoginDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppUser? currUser});

  @override
  $AppUserCopyWith<$Res>? get currUser;
}

/// @nodoc
class __$$_LoginDataCopyWithImpl<$Res>
    extends _$LoginDataCopyWithImpl<$Res, _$_LoginData>
    implements _$$_LoginDataCopyWith<$Res> {
  __$$_LoginDataCopyWithImpl(
      _$_LoginData _value, $Res Function(_$_LoginData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currUser = freezed,
  }) {
    return _then(_$_LoginData(
      currUser: freezed == currUser
          ? _value.currUser
          : currUser // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }
}

/// @nodoc

class _$_LoginData implements _LoginData {
  _$_LoginData({this.currUser});

  @override
  final AppUser? currUser;

  @override
  String toString() {
    return 'LoginData(currUser: $currUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginData &&
            (identical(other.currUser, currUser) ||
                other.currUser == currUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginDataCopyWith<_$_LoginData> get copyWith =>
      __$$_LoginDataCopyWithImpl<_$_LoginData>(this, _$identity);
}

abstract class _LoginData implements LoginData {
  factory _LoginData({final AppUser? currUser}) = _$_LoginData;

  @override
  AppUser? get currUser;
  @override
  @JsonKey(ignore: true)
  _$$_LoginDataCopyWith<_$_LoginData> get copyWith =>
      throw _privateConstructorUsedError;
}
