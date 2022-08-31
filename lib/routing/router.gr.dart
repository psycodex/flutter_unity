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
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../tab_container_default.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    TabContainerDefault.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.TabContainerDefault());
    }
  };

  @override
  List<_i2.RouteConfig> get routes =>
      [_i2.RouteConfig(TabContainerDefault.name, path: '/')];
}

/// generated route for
/// [_i1.TabContainerDefault]
class TabContainerDefault extends _i2.PageRouteInfo<void> {
  const TabContainerDefault() : super(TabContainerDefault.name, path: '/');

  static const String name = 'TabContainerDefault';
}
