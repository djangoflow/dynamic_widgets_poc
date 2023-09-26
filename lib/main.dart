import 'package:auto_route/auto_route.dart';
import 'package:json_dynamic_builder_list_view_example/router/app_router.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

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
    return MaterialApp.router(
      theme: ThemeData(useMaterial3: true),
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }
}
