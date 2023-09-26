import 'package:json_dynamic_builder_list_view_example/router/app_router.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  JsonWidgetRegistry.instance.navigatorKey = navigatorKey;

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
