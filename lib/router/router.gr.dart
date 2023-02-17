// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../feature/home/presentation/home_screen.dart' as _i1;
import '../feature/news/presentation/news_screen.dart' as _i4;
import '../feature/our_works/presentation/our_work_screen.dart' as _i2;
import '../feature/services/presentation/service_screen.dart' as _i3;
import '../feature/services/presentation/widgets/gates_info_page.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    OurWorksScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.OurWorksScreen(),
      );
    },
    ServiceScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ServiceScreen(),
      );
    },
    NewsScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.NewsScreen(),
      );
    },
    GateInfoPageRoute.name: (routeData) {
      final args = routeData.argsAs<GateInfoPageRouteArgs>(
          orElse: () => const GateInfoPageRouteArgs());
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.GateInfoPage(key: args.key),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          HomeScreenRoute.name,
          path: '/',
        ),
        _i6.RouteConfig(
          OurWorksScreenRoute.name,
          path: '/our-works-screen',
        ),
        _i6.RouteConfig(
          ServiceScreenRoute.name,
          path: '/service-screen',
        ),
        _i6.RouteConfig(
          NewsScreenRoute.name,
          path: '/news-screen',
        ),
        _i6.RouteConfig(
          GateInfoPageRoute.name,
          path: '/gate-info-page',
        ),
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreenRoute extends _i6.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i2.OurWorksScreen]
class OurWorksScreenRoute extends _i6.PageRouteInfo<void> {
  const OurWorksScreenRoute()
      : super(
          OurWorksScreenRoute.name,
          path: '/our-works-screen',
        );

  static const String name = 'OurWorksScreenRoute';
}

/// generated route for
/// [_i3.ServiceScreen]
class ServiceScreenRoute extends _i6.PageRouteInfo<void> {
  const ServiceScreenRoute()
      : super(
          ServiceScreenRoute.name,
          path: '/service-screen',
        );

  static const String name = 'ServiceScreenRoute';
}

/// generated route for
/// [_i4.NewsScreen]
class NewsScreenRoute extends _i6.PageRouteInfo<void> {
  const NewsScreenRoute()
      : super(
          NewsScreenRoute.name,
          path: '/news-screen',
        );

  static const String name = 'NewsScreenRoute';
}

/// generated route for
/// [_i5.GateInfoPage]
class GateInfoPageRoute extends _i6.PageRouteInfo<GateInfoPageRouteArgs> {
  GateInfoPageRoute({_i7.Key? key})
      : super(
          GateInfoPageRoute.name,
          path: '/gate-info-page',
          args: GateInfoPageRouteArgs(key: key),
        );

  static const String name = 'GateInfoPageRoute';
}

class GateInfoPageRouteArgs {
  const GateInfoPageRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'GateInfoPageRouteArgs{key: $key}';
  }
}
