import 'package:flutter/material.dart';
import 'package:psyc_fit/screens/exercise_screen.dart';
import 'package:psyc_fit/screens/profile_screen.dart';
import 'package:psyc_fit/screens/progress_screen.dart';
import 'package:psyc_fit/screens/workout_screen.dart';

class HomeContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeContainerState();
  }
}

class _HomeContainerState extends State<HomeContainer> {
  late var listScreens;

  @override
  void initState() {
    super.initState();

    listScreens = [
      WorkoutScreen(),
      ExerciseScreen(),
      ProgressScreen(),
      ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(children: listScreens),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                text: 'Workout',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'Exercise',
                icon: Icon(Icons.report_problem),
              ),
              Tab(
                text: 'Progress',
                icon: Icon(Icons.settings),
              ),
              Tab(
                text: 'Profile',
                icon: Icon(Icons.settings),
              ),
            ],
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
