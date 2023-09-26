// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:json_dynamic_builder_list_view_example/list_detail_page.dart'
    as _i1;
import 'package:json_dynamic_builder_list_view_example/list_view_page.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    ListDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ListDetailRouteArgs>(
          orElse: () => ListDetailRouteArgs(id: pathParams.getString('id')));
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ListDetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    ListViewRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ListViewPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ListDetailPage]
class ListDetailRoute extends _i3.PageRouteInfo<ListDetailRouteArgs> {
  ListDetailRoute({
    _i4.Key? key,
    required String id,
    List<_i3.PageRouteInfo>? children,
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

  static const _i3.PageInfo<ListDetailRouteArgs> page =
      _i3.PageInfo<ListDetailRouteArgs>(name);
}

class ListDetailRouteArgs {
  const ListDetailRouteArgs({
    this.key,
    required this.id,
  });

  final _i4.Key? key;

  final String id;

  @override
  String toString() {
    return 'ListDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i2.ListViewPage]
class ListViewRoute extends _i3.PageRouteInfo<void> {
  const ListViewRoute({List<_i3.PageRouteInfo>? children})
      : super(
          ListViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListViewRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
