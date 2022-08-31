import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/screens_unity/unity_simple_screen.dart';

class TabContainerDefault extends StatefulWidget {
  late State<StatefulWidget> statefulWidget;

  @override
  State<StatefulWidget> createState() {
    statefulWidget = _TabContainerDefaultState();
    return statefulWidget; // _TabContainerDefaultState();
  }
}

class _TabContainerDefaultState extends State<TabContainerDefault> {
  late List<UnitySimpleScreen> listScreens;

  @override
  void initState() {
    super.initState();

    listScreens = [
      UnitySimpleScreen(),
      UnitySimpleScreen(),
      UnitySimpleScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(
              physics: NeverScrollableScrollPhysics(), children: listScreens),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                text: 'Tab1',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'Tab2',
                icon: Icon(Icons.report_problem),
              ),
              Tab(
                text: 'Tab3',
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
