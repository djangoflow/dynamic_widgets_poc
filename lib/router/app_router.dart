import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  AppRouter({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: ListViewRoute.page, path: '/'),
        AutoRoute(page: ListDetailRoute.page, path: '/list-detail/:id'),
      ];
}
