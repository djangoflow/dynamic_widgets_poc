part of 'dynamic_theme_cubit.dart';

@freezed
class DjangoflowDynamicThemeState with _$DjangoflowDynamicThemeState {
  const factory DjangoflowDynamicThemeState({
    @Default(ThemeMode.light) ThemeMode themeMode,
    Map<String, dynamic>? lightThemeJson,
    Map<String, dynamic>? darkThemeJson,
  }) = _DjangoflowDynamicThemeState;

  factory DjangoflowDynamicThemeState.fromJson(Map<String, dynamic> json) =>
      _$DjangoflowDynamicThemeStateFromJson(json);
}
