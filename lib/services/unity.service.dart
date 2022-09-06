import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class UnityService {
  late UnityWidget unityWidget;
  late UnityWidgetController unityWidgetController;

  // static UnityService init() {
  static Future<UnityService> init() async {
    var unityService = UnityService();
    unityService.buildUnityWidget();
    return unityService;
  }

  void buildUnityWidget() {
    unityWidget = UnityWidget(
      onUnityCreated: _onUnityCreated,
      onUnityMessage: onUnityMessage,
      onUnitySceneLoaded: onUnitySceneLoaded,
      useAndroidViewSurface: true,
      // borderRadius: BorderRadius.all(Radius.circular(70)),
    );
  }

  void _onUnityCreated(controller) {
    unityWidgetController = controller;
    controller.resume();
  }

  void onUnityMessage(message) {
    print('Received message from unity: ${message.toString()}');
  }

  void onUnitySceneLoaded(SceneLoaded? scene) {
    print('Received scene loaded from unity: ${scene!.name}');
    print('Received scene loaded from unity buildIndex: ${scene.buildIndex}');
  }
}
