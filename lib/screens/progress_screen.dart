import 'package:flutter/material.dart';
import 'package:psyc_fit/services/unity.service.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:psyc_fit/injection.dart';

class ProgressScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ProgressScreenState();
  }
}

class _ProgressScreenState extends State<ProgressScreen> {
  final UnityService unityService = locator<UnityService>();

  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Progress'),
      ),
      body: Card(
          margin: const EdgeInsets.all(0),
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Stack(
            children: [
              unityService.unityWidget,
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
    unityService.unityWidgetController.postMessage(
      'Cube',
      'SetRotationSpeed',
      speed,
    );
  }
}
