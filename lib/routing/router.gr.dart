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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../screens/google_screen.dart' as _i3;
import '../screens/home_screen.dart' as _i1;
import '../screens/login_screen.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeContainer.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.HomeContainer(),
      );
    },
    LoginScreen.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.LoginScreen(),
      );
    },
    SignInDemo.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SignInDemo(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          HomeContainer.name,
          path: '/home-container',
        ),
        _i4.RouteConfig(
          LoginScreen.name,
          path: '/login-screen',
        ),
        _i4.RouteConfig(
          SignInDemo.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.HomeContainer]
class HomeContainer extends _i4.PageRouteInfo<void> {
  const HomeContainer()
      : super(
          HomeContainer.name,
          path: '/home-container',
        );

  static const String name = 'HomeContainer';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreen extends _i4.PageRouteInfo<void> {
  const LoginScreen()
      : super(
          LoginScreen.name,
          path: '/login-screen',
        );

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i3.SignInDemo]
class SignInDemo extends _i4.PageRouteInfo<void> {
  const SignInDemo()
      : super(
          SignInDemo.name,
          path: '/',
        );

  static const String name = 'SignInDemo';
}
