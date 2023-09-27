// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'json_theme_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DjangoflowJsonThemeState _$DjangoflowJsonThemeStateFromJson(
    Map<String, dynamic> json) {
  return _DjangoflowJsonThemeState.fromJson(json);
}

/// @nodoc
mixin _$DjangoflowJsonThemeState {
  @ThemeDataJsonConverter()
  ThemeData? get lightTheme => throw _privateConstructorUsedError;
  @ThemeDataJsonConverter()
  ThemeData? get darkTheme => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DjangoflowJsonThemeStateCopyWith<DjangoflowJsonThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DjangoflowJsonThemeStateCopyWith<$Res> {
  factory $DjangoflowJsonThemeStateCopyWith(DjangoflowJsonThemeState value,
          $Res Function(DjangoflowJsonThemeState) then) =
      _$DjangoflowJsonThemeStateCopyWithImpl<$Res, DjangoflowJsonThemeState>;
  @useResult
  $Res call(
      {@ThemeDataJsonConverter() ThemeData? lightTheme,
      @ThemeDataJsonConverter() ThemeData? darkTheme});
}

/// @nodoc
class _$DjangoflowJsonThemeStateCopyWithImpl<$Res,
        $Val extends DjangoflowJsonThemeState>
    implements $DjangoflowJsonThemeStateCopyWith<$Res> {
  _$DjangoflowJsonThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lightTheme = freezed,
    Object? darkTheme = freezed,
  }) {
    return _then(_value.copyWith(
      lightTheme: freezed == lightTheme
          ? _value.lightTheme
          : lightTheme // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
      darkTheme: freezed == darkTheme
          ? _value.darkTheme
          : darkTheme // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DjangoflowJsonThemeStateCopyWith<$Res>
    implements $DjangoflowJsonThemeStateCopyWith<$Res> {
  factory _$$_DjangoflowJsonThemeStateCopyWith(
          _$_DjangoflowJsonThemeState value,
          $Res Function(_$_DjangoflowJsonThemeState) then) =
      __$$_DjangoflowJsonThemeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@ThemeDataJsonConverter() ThemeData? lightTheme,
      @ThemeDataJsonConverter() ThemeData? darkTheme});
}

/// @nodoc
class __$$_DjangoflowJsonThemeStateCopyWithImpl<$Res>
    extends _$DjangoflowJsonThemeStateCopyWithImpl<$Res,
        _$_DjangoflowJsonThemeState>
    implements _$$_DjangoflowJsonThemeStateCopyWith<$Res> {
  __$$_DjangoflowJsonThemeStateCopyWithImpl(_$_DjangoflowJsonThemeState _value,
      $Res Function(_$_DjangoflowJsonThemeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lightTheme = freezed,
    Object? darkTheme = freezed,
  }) {
    return _then(_$_DjangoflowJsonThemeState(
      lightTheme: freezed == lightTheme
          ? _value.lightTheme
          : lightTheme // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
      darkTheme: freezed == darkTheme
          ? _value.darkTheme
          : darkTheme // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DjangoflowJsonThemeState implements _DjangoflowJsonThemeState {
  const _$_DjangoflowJsonThemeState(
      {@ThemeDataJsonConverter() this.lightTheme,
      @ThemeDataJsonConverter() this.darkTheme});

  factory _$_DjangoflowJsonThemeState.fromJson(Map<String, dynamic> json) =>
      _$$_DjangoflowJsonThemeStateFromJson(json);

  @override
  @ThemeDataJsonConverter()
  final ThemeData? lightTheme;
  @override
  @ThemeDataJsonConverter()
  final ThemeData? darkTheme;

  @override
  String toString() {
    return 'DjangoflowJsonThemeState(lightTheme: $lightTheme, darkTheme: $darkTheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DjangoflowJsonThemeState &&
            (identical(other.lightTheme, lightTheme) ||
                other.lightTheme == lightTheme) &&
            (identical(other.darkTheme, darkTheme) ||
                other.darkTheme == darkTheme));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lightTheme, darkTheme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DjangoflowJsonThemeStateCopyWith<_$_DjangoflowJsonThemeState>
      get copyWith => __$$_DjangoflowJsonThemeStateCopyWithImpl<
          _$_DjangoflowJsonThemeState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DjangoflowJsonThemeStateToJson(
      this,
    );
  }
}

abstract class _DjangoflowJsonThemeState implements DjangoflowJsonThemeState {
  const factory _DjangoflowJsonThemeState(
          {@ThemeDataJsonConverter() final ThemeData? lightTheme,
          @ThemeDataJsonConverter() final ThemeData? darkTheme}) =
      _$_DjangoflowJsonThemeState;

  factory _DjangoflowJsonThemeState.fromJson(Map<String, dynamic> json) =
      _$_DjangoflowJsonThemeState.fromJson;

  @override
  @ThemeDataJsonConverter()
  ThemeData? get lightTheme;
  @override
  @ThemeDataJsonConverter()
  ThemeData? get darkTheme;
  @override
  @JsonKey(ignore: true)
  _$$_DjangoflowJsonThemeStateCopyWith<_$_DjangoflowJsonThemeState>
      get copyWith => throw _privateConstructorUsedError;
}
