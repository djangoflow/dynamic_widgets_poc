// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:json_dynamic_builder_list_view_example/pages/home_page.dart'
    as _i1;
import 'package:json_dynamic_builder_list_view_example/pages/list_detail_page.dart'
    as _i2;
import 'package:json_dynamic_builder_list_view_example/pages/list_view_page.dart'
    as _i3;
import 'package:json_dynamic_builder_list_view_example/pages/themed_json_page.dart'
    as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    ListDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ListDetailRouteArgs>(
          orElse: () => ListDetailRouteArgs(id: pathParams.getString('id')));
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ListDetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    ListViewRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ListViewPage(),
      );
    },
    ThemedJsonRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ThemedJsonPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ListDetailPage]
class ListDetailRoute extends _i5.PageRouteInfo<ListDetailRouteArgs> {
  ListDetailRoute({
    _i6.Key? key,
    required String id,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          ListDetailRoute.name,
          args: ListDetailRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'ListDetailRoute';

  static const _i5.PageInfo<ListDetailRouteArgs> page =
      _i5.PageInfo<ListDetailRouteArgs>(name);
}

class ListDetailRouteArgs {
  const ListDetailRouteArgs({
    this.key,
    required this.id,
  });

  final _i6.Key? key;

  final String id;

  @override
  String toString() {
    return 'ListDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i3.ListViewPage]
class ListViewRoute extends _i5.PageRouteInfo<void> {
  const ListViewRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ListViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListViewRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ThemedJsonPage]
class ThemedJsonRoute extends _i5.PageRouteInfo<void> {
  const ThemedJsonRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ThemedJsonRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThemedJsonRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
