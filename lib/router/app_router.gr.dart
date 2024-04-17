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
      final args = routeData.argsAs<DetailRouteArgs>(
          orElse: () => const DetailRouteArgs());
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.DetailPage(
          key: args.key,
          imdbId: args.imdbId,
        ),
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
class DetailRoute extends _i3.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    _i4.Key? key,
    String? imdbId,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          DetailRoute.name,
          args: DetailRouteArgs(
            key: key,
            imdbId: imdbId,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static const _i3.PageInfo<DetailRouteArgs> page =
      _i3.PageInfo<DetailRouteArgs>(name);
}

class DetailRouteArgs {
  const DetailRouteArgs({
    this.key,
    this.imdbId,
  });

  final _i4.Key? key;

  final String? imdbId;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, imdbId: $imdbId}';
  }
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
