// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:movies_app/presentation/views/detail_page.dart' as _i1;
import 'package:movies_app/presentation/views/mainpage.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    DetailRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DetailPage(),
      );
    },
    MainPageRoute.name: (routeData) {
      final args = routeData.argsAs<MainPageRouteArgs>(
          orElse: () => const MainPageRouteArgs());
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.MainPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.DetailPage]
class DetailRoute extends _i3.PageRouteInfo<void> {
  const DetailRoute({List<_i3.PageRouteInfo>? children})
      : super(
          DetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MainPage]
class MainPageRoute extends _i3.PageRouteInfo<MainPageRouteArgs> {
  MainPageRoute({
    _i4.Key? key,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          MainPageRoute.name,
          args: MainPageRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MainPageRoute';

  static const _i3.PageInfo<MainPageRouteArgs> page =
      _i3.PageInfo<MainPageRouteArgs>(name);
}

class MainPageRouteArgs {
  const MainPageRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'MainPageRouteArgs{key: $key}';
  }
}
