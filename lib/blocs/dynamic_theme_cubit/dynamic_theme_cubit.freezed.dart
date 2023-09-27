// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_theme_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DjangoflowDynamicThemeState _$DjangoflowDynamicThemeStateFromJson(
    Map<String, dynamic> json) {
  return _DjangoflowDynamicThemeState.fromJson(json);
}

/// @nodoc
mixin _$DjangoflowDynamicThemeState {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  Map<String, dynamic>? get lightThemeJson =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get darkThemeJson => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DjangoflowDynamicThemeStateCopyWith<DjangoflowDynamicThemeState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DjangoflowDynamicThemeStateCopyWith<$Res> {
  factory $DjangoflowDynamicThemeStateCopyWith(
          DjangoflowDynamicThemeState value,
          $Res Function(DjangoflowDynamicThemeState) then) =
      _$DjangoflowDynamicThemeStateCopyWithImpl<$Res,
          DjangoflowDynamicThemeState>;
  @useResult
  $Res call(
      {ThemeMode themeMode,
      Map<String, dynamic>? lightThemeJson,
      Map<String, dynamic>? darkThemeJson});
}

/// @nodoc
class _$DjangoflowDynamicThemeStateCopyWithImpl<$Res,
        $Val extends DjangoflowDynamicThemeState>
    implements $DjangoflowDynamicThemeStateCopyWith<$Res> {
  _$DjangoflowDynamicThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? lightThemeJson = freezed,
    Object? darkThemeJson = freezed,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      lightThemeJson: freezed == lightThemeJson
          ? _value.lightThemeJson
          : lightThemeJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      darkThemeJson: freezed == darkThemeJson
          ? _value.darkThemeJson
          : darkThemeJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DjangoflowDynamicThemeStateCopyWith<$Res>
    implements $DjangoflowDynamicThemeStateCopyWith<$Res> {
  factory _$$_DjangoflowDynamicThemeStateCopyWith(
          _$_DjangoflowDynamicThemeState value,
          $Res Function(_$_DjangoflowDynamicThemeState) then) =
      __$$_DjangoflowDynamicThemeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ThemeMode themeMode,
      Map<String, dynamic>? lightThemeJson,
      Map<String, dynamic>? darkThemeJson});
}

/// @nodoc
class __$$_DjangoflowDynamicThemeStateCopyWithImpl<$Res>
    extends _$DjangoflowDynamicThemeStateCopyWithImpl<$Res,
        _$_DjangoflowDynamicThemeState>
    implements _$$_DjangoflowDynamicThemeStateCopyWith<$Res> {
  __$$_DjangoflowDynamicThemeStateCopyWithImpl(
      _$_DjangoflowDynamicThemeState _value,
      $Res Function(_$_DjangoflowDynamicThemeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? lightThemeJson = freezed,
    Object? darkThemeJson = freezed,
  }) {
    return _then(_$_DjangoflowDynamicThemeState(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      lightThemeJson: freezed == lightThemeJson
          ? _value._lightThemeJson
          : lightThemeJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      darkThemeJson: freezed == darkThemeJson
          ? _value._darkThemeJson
          : darkThemeJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DjangoflowDynamicThemeState implements _DjangoflowDynamicThemeState {
  const _$_DjangoflowDynamicThemeState(
      {this.themeMode = ThemeMode.light,
      final Map<String, dynamic>? lightThemeJson,
      final Map<String, dynamic>? darkThemeJson})
      : _lightThemeJson = lightThemeJson,
        _darkThemeJson = darkThemeJson;

  factory _$_DjangoflowDynamicThemeState.fromJson(Map<String, dynamic> json) =>
      _$$_DjangoflowDynamicThemeStateFromJson(json);

  @override
  @JsonKey()
  final ThemeMode themeMode;
  final Map<String, dynamic>? _lightThemeJson;
  @override
  Map<String, dynamic>? get lightThemeJson {
    final value = _lightThemeJson;
    if (value == null) return null;
    if (_lightThemeJson is EqualUnmodifiableMapView) return _lightThemeJson;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _darkThemeJson;
  @override
  Map<String, dynamic>? get darkThemeJson {
    final value = _darkThemeJson;
    if (value == null) return null;
    if (_darkThemeJson is EqualUnmodifiableMapView) return _darkThemeJson;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'DjangoflowDynamicThemeState(themeMode: $themeMode, lightThemeJson: $lightThemeJson, darkThemeJson: $darkThemeJson)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DjangoflowDynamicThemeState &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            const DeepCollectionEquality()
                .equals(other._lightThemeJson, _lightThemeJson) &&
            const DeepCollectionEquality()
                .equals(other._darkThemeJson, _darkThemeJson));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      themeMode,
      const DeepCollectionEquality().hash(_lightThemeJson),
      const DeepCollectionEquality().hash(_darkThemeJson));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DjangoflowDynamicThemeStateCopyWith<_$_DjangoflowDynamicThemeState>
      get copyWith => __$$_DjangoflowDynamicThemeStateCopyWithImpl<
          _$_DjangoflowDynamicThemeState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DjangoflowDynamicThemeStateToJson(
      this,
    );
  }
}

abstract class _DjangoflowDynamicThemeState
    implements DjangoflowDynamicThemeState {
  const factory _DjangoflowDynamicThemeState(
          {final ThemeMode themeMode,
          final Map<String, dynamic>? lightThemeJson,
          final Map<String, dynamic>? darkThemeJson}) =
      _$_DjangoflowDynamicThemeState;

  factory _DjangoflowDynamicThemeState.fromJson(Map<String, dynamic> json) =
      _$_DjangoflowDynamicThemeState.fromJson;

  @override
  ThemeMode get themeMode;
  @override
  Map<String, dynamic>? get lightThemeJson;
  @override
  Map<String, dynamic>? get darkThemeJson;
  @override
  @JsonKey(ignore: true)
  _$$_DjangoflowDynamicThemeStateCopyWith<_$_DjangoflowDynamicThemeState>
      get copyWith => throw _privateConstructorUsedError;
}
