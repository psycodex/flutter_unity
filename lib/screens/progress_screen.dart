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
          child: Stack()),
    );
  }
}
