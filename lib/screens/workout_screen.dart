import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:objectbox/objectbox.dart';
import 'package:psyc_fit/injection.dart';
import 'package:psyc_fit/models/exercise.dart';
import 'package:psyc_fit/models/exercise_json.dart';

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
          child: TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {
              test();
            },
            child: Text('Press Me'),
          ),
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

  final store = locator<Store>();

  Future<void> test() async {
    final str = "assets/exercise.json";
    String data = await DefaultAssetBundle.of(context).loadString(str);
    final json = jsonDecode(data);
    final exercise = ExerciseJson.fromJson(json);
    final exerciseBox = store.box<Exercise>();

    exerciseBox.removeAll();
    for (int i = 0; i < exercise.exercises.length; i++) {
      var ex = exercise.exercises[i];
      exerciseBox.put(Exercise(
          name: ex.name,
          force: ex.force,
          level: ex.level,
          mechanic: ex.mechanic,
          equipment: ex.equipment,
          primaryMuscles: ex.primaryMuscles,
          secondaryMuscles: ex.secondaryMuscles,
          instructions: ex.instructions,
          category: ex.category));
    }
    var test = exerciseBox.getAll();
    log('data: $test');
  }
}
