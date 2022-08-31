import 'package:auto_route/auto_route.dart';
import 'package:flutter_unity_widget_example/tab_container_default.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: TabContainerDefault,
      initial: true,
    ),
    // AutoRoute(page: LoginPage),
  ],
)
class $AppRouter {}
