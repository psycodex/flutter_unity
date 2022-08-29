import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

class UnitySimpleScreen extends StatefulWidget {
  final UnityWidget unityWidget;
  UnityWidgetController unityWidgetController;
  UnityCreatedCallback createdCallback;

  UnitySimpleScreen({this.unityWidget, this.createdCallback});

  @override
  State<StatefulWidget> createState() {
    return new _UnitySimpleScreenState();
  }
}

class _UnitySimpleScreenState extends State<UnitySimpleScreen> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();

  double _sliderValue = 0.0;

  @override
  void initState() {
    widget.createdCallback = _onUnityCreated;
    // widget.unit
    super.initState();
  }

  @override
  void dispose() {
    // widget.unityWidgetController.dispose();
    super.dispose();
  }

  void _onUnityCreated(controller) {
    widget.unityWidgetController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Simple Screen'),
      ),
      body: Card(
          margin: const EdgeInsets.all(0),
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Stack(
            children: [
              widget.unityWidget,
              PointerInterceptor(
                child: Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Card(
                    elevation: 10,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text("Rotation speed:"),
                        ),
                        Slider(
                          onChanged: (value) {
                            setState(() {
                              _sliderValue = value;
                            });
                            setRotationSpeed(value.toString());
                          },
                          value: _sliderValue,
                          min: 0.0,
                          max: 1.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  void setRotationSpeed(String speed) {
    widget.unityWidgetController.postMessage(
      'Cube',
      'SetRotationSpeed',
      speed,
    );
  }
}