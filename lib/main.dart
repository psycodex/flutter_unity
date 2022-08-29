import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:flutter_unity_widget_example/screens/no_interaction_screen.dart';
import 'package:flutter_unity_widget_example/screens/orientation_screen.dart';
import 'package:flutter_unity_widget_example/tab_container_default.dart';

import 'injection.dart';
import 'menu_screen.dart';
import 'screens/api_screen.dart';
import 'screens/loader_screen.dart';
import 'screens/simple_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  UnityWidget unityWidget;
  UnityWidgetController unityWidgetController;
  UnityCreatedCallback createdCallback;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    unityWidget = buildUnityWidget();
    return MaterialApp(
      title: 'Flutter Unity Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => buildTabContainerDefault(),
        // MenuScreen(),
        '/simple': (context) => SimpleScreen(),
        '/loader': (context) => LoaderScreen(),
        '/orientation': (context) => OrientationScreen(),
        '/api': (context) => ApiScreen(),
        '/none': (context) => NoInteractionScreen(),
      },
    );
  }

  buildTabContainerDefault() {
    return TabContainerDefault(
        unityWidget: unityWidget, createdCallback: createdCallback);
  }

  UnityWidget buildUnityWidget() {
    return UnityWidget(
      onUnityCreated: _onUnityCreated,
      onUnityMessage: onUnityMessage,
      onUnitySceneLoaded: onUnitySceneLoaded,
      useAndroidViewSurface: true,
      borderRadius: BorderRadius.all(Radius.circular(70)),
    );
  }

  // Callback that connects the created controller to the unity controller
  void _onUnityCreated(controller) {
    createdCallback?.call(controller);
    unityWidgetController = controller;
    controller.resume();
  }

  void onUnityMessage(message) {
    print('Received message from unity: ${message.toString()}');
  }

  void onUnitySceneLoaded(SceneLoaded scene) {
    print('Received scene loaded from unity: ${scene.name}');
    print('Received scene loaded from unity buildIndex: ${scene.buildIndex}');
  }
}
