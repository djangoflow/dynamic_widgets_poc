// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_theme_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DjangoflowDynamicThemeState _$$_DjangoflowDynamicThemeStateFromJson(
        Map<String, dynamic> json) =>
    _$_DjangoflowDynamicThemeState(
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.light,
      lightThemeJson: json['lightThemeJson'] as Map<String, dynamic>?,
      darkThemeJson: json['darkThemeJson'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_DjangoflowDynamicThemeStateToJson(
        _$_DjangoflowDynamicThemeState instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'lightThemeJson': instance.lightThemeJson,
      'darkThemeJson': instance.darkThemeJson,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
