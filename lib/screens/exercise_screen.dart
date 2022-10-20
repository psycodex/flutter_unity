import 'package:flutter/material.dart';
import 'package:psyc_fit/services/unity.service.dart';
import 'package:psyc_fit/injection.dart';

class ExerciseScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ExerciseScreenState();
  }
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  // final UnityService unityService = locator<UnityService>();

  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Exercise'),
      ),
      body: Card(
          margin: const EdgeInsets.all(0),
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Stack(
            children: [
              Container(
                  constraints: BoxConstraints(maxHeight: 300),
                  child: Container()),
            ],
          )),
    );
  }
}
