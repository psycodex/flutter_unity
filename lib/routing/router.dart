import 'package:auto_route/auto_route.dart';
import 'package:psyc_fit/screens/default_screen.dart';
import 'package:psyc_fit/screens/google_screen.dart';
import 'package:psyc_fit/screens/home_screen.dart';
import 'package:psyc_fit/screens/login_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: HomeScreen,
    ),
    AutoRoute(page: DefaultScreen, initial: true),
    AutoRoute(page: LoginScreen),
    AutoRoute(page: SignInDemo),
  ],
)
class $AppRouter {}
