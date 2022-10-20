import 'package:auto_route/auto_route.dart';
import 'package:psyc_fit/screens/google_screen.dart';
import 'package:psyc_fit/screens/home_screen.dart';
import 'package:psyc_fit/screens/login_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: HomeContainer,
    ),
    AutoRoute(page: LoginScreen),
    AutoRoute(page: SignInDemo, initial: true),
  ],
)
class $AppRouter {}
