import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/screens_unity/no_interaction_screen.dart';
import 'package:flutter_unity_widget_example/screens_unity/orientation_screen.dart';
import 'package:flutter_unity_widget_example/tab_container_default.dart';

import 'injection.dart';
import 'screens_unity/api_screen.dart';
import 'screens_unity/loader_screen.dart';
import 'screens_unity/simple_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Unity Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => TabContainerDefault(),
        // MenuScreen(),
        '/simple': (context) => SimpleScreen(),
        '/loader': (context) => LoaderScreen(),
        '/orientation': (context) => OrientationScreen(),
        '/api': (context) => ApiScreen(),
        '/none': (context) => NoInteractionScreen(),
      },
    );
  }
}
