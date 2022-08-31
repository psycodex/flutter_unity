import 'package:flutter/material.dart';
import 'injection.dart';
import 'routing/router.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(MyApp());
  // runApp(TabBarDemo());
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
