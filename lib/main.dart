import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/screens_unity/no_interaction_screen.dart';
import 'package:flutter_unity_widget_example/screens_unity/orientation_screen.dart';
import 'package:flutter_unity_widget_example/tab_container_default.dart';
import 'injection.dart';
import 'routing/router.gr.dart';
import 'screens_unity/api_screen.dart';
import 'screens_unity/loader_screen.dart';
import 'screens_unity/simple_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = locator<AppRouter>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      title: "PsycFit",
      theme: ThemeData.dark(),
      color: Colors.redAccent,
    );
  }
}
