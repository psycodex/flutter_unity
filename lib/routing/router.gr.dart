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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../screens/default_screen.dart' as _i2;
import '../screens/google_screen.dart' as _i4;
import '../screens/home_screen.dart' as _i1;
import '../screens/login_screen.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeScreen.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.HomeScreen(),
      );
    },
    DefaultScreen.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.DefaultScreen(),
      );
    },
    LoginScreen.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.LoginScreen(),
      );
    },
    SignInDemo.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SignInDemo(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          HomeScreen.name,
          path: '/home-screen',
        ),
        _i5.RouteConfig(
          DefaultScreen.name,
          path: '/',
        ),
        _i5.RouteConfig(
          LoginScreen.name,
          path: '/login-screen',
        ),
        _i5.RouteConfig(
          SignInDemo.name,
          path: '/sign-in-demo',
        ),
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreen extends _i5.PageRouteInfo<void> {
  const HomeScreen()
      : super(
          HomeScreen.name,
          path: '/home-screen',
        );

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i2.DefaultScreen]
class DefaultScreen extends _i5.PageRouteInfo<void> {
  const DefaultScreen()
      : super(
          DefaultScreen.name,
          path: '/',
        );

  static const String name = 'DefaultScreen';
}

/// generated route for
/// [_i3.LoginScreen]
class LoginScreen extends _i5.PageRouteInfo<void> {
  const LoginScreen()
      : super(
          LoginScreen.name,
          path: '/login-screen',
        );

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i4.SignInDemo]
class SignInDemo extends _i5.PageRouteInfo<void> {
  const SignInDemo()
      : super(
          SignInDemo.name,
          path: '/sign-in-demo',
        );

  static const String name = 'SignInDemo';
}
