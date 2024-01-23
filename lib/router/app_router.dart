import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  AppRouter({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/'),
        AutoRoute(page: ListViewRoute.page, path: '/list'),
        AutoRoute(page: CustomListViewRoute.page, path: '/custom_list'),
        AutoRoute(page: ThemedJsonRoute.page, path: '/theme'),
        AutoRoute(page: ListDetailRoute.page, path: '/list-detail/:id'),
      ];
}
