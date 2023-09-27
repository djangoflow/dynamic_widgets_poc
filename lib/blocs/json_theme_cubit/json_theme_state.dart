part of 'json_theme_cubit.dart';

@freezed
class DjangoflowJsonThemeState with _$DjangoflowJsonThemeState {
  const factory DjangoflowJsonThemeState({
    @ThemeDataJsonConverter() ThemeData? lightTheme,
    @ThemeDataJsonConverter() ThemeData? darkTheme,
  }) = _DjangoflowJsonThemeState;

  factory DjangoflowJsonThemeState.fromJson(Map<String, dynamic> json) =>
      _$DjangoflowJsonThemeStateFromJson(json);
}

class ThemeDataJsonConverter
    extends JsonConverter<ThemeData?, Map<String, dynamic>?> {
  const ThemeDataJsonConverter();

  @override
  ThemeData? fromJson(Map<String, dynamic>? json) =>
      ThemeDecoder.decodeThemeData(json);

  @override
  Map<String, dynamic>? toJson(ThemeData? object) =>
      ThemeEncoder.encodeThemeData(object);
}
