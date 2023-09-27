import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_dynamic_builder_list_view_example/blocs/dynamic_theme_cubit/dynamic_theme_cubit.dart';
import 'package:json_dynamic_builder_list_view_example/router/app_router.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  JsonWidgetRegistry.instance.navigatorKey = navigatorKey;

  JsonWidgetRegistry.instance.registerFunctions(
    {
      'navigate': ({args, required registry}) => () {
            final context = navigatorKey.currentContext;
            if (context == null) return;

            final url = args?[0];
            if (url == null) return;

            context.router.pushNamed(url);
          },
    },
  );

  runApp(Application(
    appRouter: AppRouter(navigatorKey: navigatorKey),
  ));
}

class Application extends StatelessWidget {
  final AppRouter appRouter;

  const Application({
    super.key,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DjangoflowDynamicThemeCubit(),
      child:
          BlocBuilder<DjangoflowDynamicThemeCubit, DjangoflowDynamicThemeState>(
        builder: (context, state) {
          final lightThemeJson = state.lightThemeJson;
          final darkThemeJson = state.darkThemeJson;

          ThemeData? lightTheme;
          ThemeData? darkTheme;

          try {
            lightTheme = ThemeDecoder.decodeThemeData(lightThemeJson);
          } catch (e) {
            // no-op
          }

          try {
            darkTheme = ThemeDecoder.decodeThemeData(darkThemeJson);
          } catch (e) {
            // no-op
          }

          return MaterialApp.router(
            theme: lightTheme ?? ThemeData.light(useMaterial3: true),
            darkTheme: darkTheme ?? ThemeData.dark(useMaterial3: true),
            themeMode: state.themeMode,
            routeInformationParser: appRouter.defaultRouteParser(),
            routerDelegate: appRouter.delegate(),
          );
        },
      ),
    );
  }
}
