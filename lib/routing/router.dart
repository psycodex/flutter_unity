import 'package:auto_route/auto_route.dart';
import 'package:flutter_unity_widget_example/home.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: HomeContainer,
      initial: true,
    ),
    // AutoRoute(page: LoginPage),
  ],
)
class $AppRouter {}
