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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../feature/home/presentation/home_screen.dart' as _i1;
import '../feature/news/presentation/news_screen.dart' as _i4;
import '../feature/news/presentation/widgets/news_detail.dart' as _i6;
import '../feature/our_works/presentation/our_work_screen.dart' as _i2;
import '../feature/services/data/model/gates_model.dart' as _i9;
import '../feature/services/presentation/service_screen.dart' as _i3;
import '../feature/services/presentation/widgets/gates_info_page.dart' as _i5;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    OurWorksScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.OurWorksScreen(),
      );
    },
    ServiceScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ServiceScreen(),
      );
    },
    NewsScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.NewsScreen(),
      );
    },
    GateInfoPageRoute.name: (routeData) {
      final args = routeData.argsAs<GateInfoPageRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.GateInfoPage(
          key: args.key,
          model: args.model,
        ),
      );
    },
    NewsDetailPageRoute.name: (routeData) {
      final args = routeData.argsAs<NewsDetailPageRouteArgs>(
          orElse: () => const NewsDetailPageRouteArgs());
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.NewsDetailPage(key: args.key),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          HomeScreenRoute.name,
          path: '/',
        ),
        _i7.RouteConfig(
          OurWorksScreenRoute.name,
          path: '/our-works-screen',
        ),
        _i7.RouteConfig(
          ServiceScreenRoute.name,
          path: '/service-screen',
        ),
        _i7.RouteConfig(
          NewsScreenRoute.name,
          path: '/news-screen',
        ),
        _i7.RouteConfig(
          GateInfoPageRoute.name,
          path: '/gate-info-page',
        ),
        _i7.RouteConfig(
          NewsDetailPageRoute.name,
          path: '/news-detail-page',
        ),
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreenRoute extends _i7.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i2.OurWorksScreen]
class OurWorksScreenRoute extends _i7.PageRouteInfo<void> {
  const OurWorksScreenRoute()
      : super(
          OurWorksScreenRoute.name,
          path: '/our-works-screen',
        );

  static const String name = 'OurWorksScreenRoute';
}

/// generated route for
/// [_i3.ServiceScreen]
class ServiceScreenRoute extends _i7.PageRouteInfo<void> {
  const ServiceScreenRoute()
      : super(
          ServiceScreenRoute.name,
          path: '/service-screen',
        );

  static const String name = 'ServiceScreenRoute';
}

/// generated route for
/// [_i4.NewsScreen]
class NewsScreenRoute extends _i7.PageRouteInfo<void> {
  const NewsScreenRoute()
      : super(
          NewsScreenRoute.name,
          path: '/news-screen',
        );

  static const String name = 'NewsScreenRoute';
}

/// generated route for
/// [_i5.GateInfoPage]
class GateInfoPageRoute extends _i7.PageRouteInfo<GateInfoPageRouteArgs> {
  GateInfoPageRoute({
    _i8.Key? key,
    required _i9.GatesModel model,
  }) : super(
          GateInfoPageRoute.name,
          path: '/gate-info-page',
          args: GateInfoPageRouteArgs(
            key: key,
            model: model,
          ),
        );

  static const String name = 'GateInfoPageRoute';
}

class GateInfoPageRouteArgs {
  const GateInfoPageRouteArgs({
    this.key,
    required this.model,
  });

  final _i8.Key? key;

  final _i9.GatesModel model;

  @override
  String toString() {
    return 'GateInfoPageRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i6.NewsDetailPage]
class NewsDetailPageRoute extends _i7.PageRouteInfo<NewsDetailPageRouteArgs> {
  NewsDetailPageRoute({_i8.Key? key})
      : super(
          NewsDetailPageRoute.name,
          path: '/news-detail-page',
          args: NewsDetailPageRouteArgs(key: key),
        );

  static const String name = 'NewsDetailPageRoute';
}

class NewsDetailPageRouteArgs {
  const NewsDetailPageRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'NewsDetailPageRouteArgs{key: $key}';
  }
}
