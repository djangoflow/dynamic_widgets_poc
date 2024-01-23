import 'package:auto_route/auto_route.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_dynamic_builder_list_view_example/router/app_router.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:path_provider/path_provider.dart';

import 'blocs/json_theme_cubit/json_theme_cubit.dart';
import 'widgets/custom_list_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  JsonWidgetRegistry.instance.navigatorKey = navigatorKey;
  JsonWidgetRegistry.instance.registerCustomBuilders(
    {
      CustomListViewBuilder.kType: const JsonWidgetBuilderContainer(
        builder: CustomListViewBuilder.fromDynamic,
      ),
    },
  );
  JsonWidgetRegistry.instance.registerFunctions(
    {
      'onItemTap': ({args, required registry}) => (String value) {
            print('######## Printing args: #########');
            print(args);
            print('######## Printing value: #########');
            print(value);
            final variableName = args?[0];
            registry.setValue(variableName, value);
            print(registry.getValue(variableName));
          },
      // 'itemBuilder': ({args, required registry}) =>
      //     (BuildContext context, int index) {
      //       print('######## Printing args: #########');
      //       print(args);
      //       print('######## Printing Index: #########');
      //       print(index);
      //       print(index.runtimeType);
      //       return ListTile(
      //         title: Text('Item $index'),
      //         subtitle: Text('This is item $index'),
      //         onTap: () {
      //           print('Tapped here lala');
      //         },
      //       );
      //     },
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DjangoflowJsonThemeCubit(),
        ),
        BlocProvider<AppCubit>(
          create: (context) => AppCubit.instance,
        ),
      ],
      child: AppCubitBuilder(
        builder: (context, appState) {
          print(appState.themeMode);
          return BlocBuilder<DjangoflowJsonThemeCubit,
              DjangoflowJsonThemeState>(
            builder: (context, state) {
              return MaterialApp.router(
                theme: state.lightTheme,
                darkTheme: state.darkTheme,
                themeMode: appState.themeMode,
                routeInformationParser: appRouter.defaultRouteParser(),
                routerDelegate: appRouter.delegate(),
              );
            },
          );
        },
      ),
    );
  }
}
