import 'dart:convert';
import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_dynamic_builder_list_view_example/blocs/dynamic_theme_cubit/dynamic_theme_repository.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

part 'dynamic_theme_cubit.freezed.dart';
part 'dynamic_theme_cubit.g.dart';
part 'dynamic_theme_state.dart';

class DjangoflowDynamicThemeCubit
    extends HydratedCubit<DjangoflowDynamicThemeState> {
  DjangoflowDynamicThemeCubit() : super(const DjangoflowDynamicThemeState());

  @override
  DjangoflowDynamicThemeState? fromJson(Map<String, dynamic> json) {
    return DjangoflowDynamicThemeState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(DjangoflowDynamicThemeState state) {
    return state.toJson();
  }

  void toggleTheme() {
    emit(
      state.copyWith(
        themeMode: switch (state.themeMode) {
          ThemeMode.dark => ThemeMode.light,
          _ => ThemeMode.dark
        },
      ),
    );
  }

  Future<void> loadTheme() async {
    final out = ThemeEncoder.encodeThemeData(
      ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        listTileTheme: ListTileThemeData(
          tileColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );

    log(const JsonEncoder.withIndent('  ').convert(out));

    final theme = DynamicThemeRepository.greenThemeMap;
    final darkTheme = ThemeData(
      useMaterial3: true,
      colorSchemeSeed: Colors.red,
      brightness: Brightness.dark,
    );

    // final lightThemeJson = ThemeEncoder.encodeThemeData(theme);
    final darkThemeJson = ThemeEncoder.encodeThemeData(darkTheme);

    emit(
      state.copyWith(
        darkThemeJson: darkThemeJson,
        lightThemeJson: theme,
      ),
    );
  }
}
