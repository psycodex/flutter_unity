import 'package:flutter/material.dart';

class WorkoutScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _WorkoutScreenState();
  }
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // key: _scaffoldKey,
        appBar: AppBar(
          title: Text('Workout'),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 8.0,
          ),
          child: Text("Test"),
          // decoration: new BoxDecoration(
          //   boxShadow: [
          //     new BoxShadow(
          //       color: Colors.black,
          //       blurRadius: 20.0,
          //     ),
          //   ],
          // ),
        ));
  }
}
