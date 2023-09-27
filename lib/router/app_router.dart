import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  AppRouter({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
        RedirectRoute(path: '/', redirectTo: '/theme'),
        AutoRoute(page: ListViewRoute.page, path: '/list'),
        AutoRoute(page: ThemedJsonRoute.page, path: '/theme'),
        AutoRoute(page: ListDetailRoute.page, path: '/list-detail/:id'),
      ];
}
