import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_dynamic_builder_list_view_example/blocs/json_theme_cubit/json_theme_repository.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

part 'json_theme_cubit.freezed.dart';
part 'json_theme_cubit.g.dart';
part 'json_theme_state.dart';

class DjangoflowJsonThemeCubit extends HydratedCubit<DjangoflowJsonThemeState> {
  DjangoflowJsonThemeCubit() : super(const DjangoflowJsonThemeState());

  @override
  DjangoflowJsonThemeState? fromJson(Map<String, dynamic> json) {
    return DjangoflowJsonThemeState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(DjangoflowJsonThemeState state) {
    return state.toJson();
  }

  Future<void> loadData() async {
    debugPrint('loading...');
    final lightJsonTheme = JsonThemeRepository.lightJsonTheme;
    final darkJsonTheme = JsonThemeRepository.darkJsonTheme;
    try {
      final lightTheme = ThemeDecoder.decodeThemeData(lightJsonTheme);
      final darkTheme = ThemeDecoder.decodeThemeData(darkJsonTheme);

      debugPrint(lightTheme?.brightness.toString());
      debugPrint(darkTheme?.brightness.toString());

      emit(
        state.copyWith(
          darkTheme: darkTheme,
          lightTheme: lightTheme,
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
