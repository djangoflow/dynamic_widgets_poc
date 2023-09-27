// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_theme_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DjangoflowJsonThemeState _$$_DjangoflowJsonThemeStateFromJson(
        Map<String, dynamic> json) =>
    _$_DjangoflowJsonThemeState(
      lightTheme: const ThemeDataJsonConverter()
          .fromJson(json['lightTheme'] as Map<String, dynamic>?),
      darkTheme: const ThemeDataJsonConverter()
          .fromJson(json['darkTheme'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$_DjangoflowJsonThemeStateToJson(
        _$_DjangoflowJsonThemeState instance) =>
    <String, dynamic>{
      'lightTheme': const ThemeDataJsonConverter().toJson(instance.lightTheme),
      'darkTheme': const ThemeDataJsonConverter().toJson(instance.darkTheme),
    };
