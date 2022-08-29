import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:flutter_unity_widget_example/screens/unity_simple_screen.dart';

class TabContainerDefault extends StatefulWidget {
  final UnityWidget unityWidget;
  UnityWidgetController unityWidgetController;
  State<StatefulWidget> statefulWidget;
  UnityCreatedCallback createdCallback;

  TabContainerDefault({this.unityWidget, this.createdCallback});

  @override
  State<StatefulWidget> createState() {
    statefulWidget = _TabContainerDefaultState();
    return statefulWidget; // _TabContainerDefaultState();
  }
}

class _TabContainerDefaultState extends State<TabContainerDefault> {
  List<UnitySimpleScreen> listScreens;

  @override
  void initState() {
    super.initState();

    listScreens = [
      UnitySimpleScreen(
          unityWidget: widget.unityWidget,
          createdCallback: widget.createdCallback),
      UnitySimpleScreen(
          unityWidget: widget.unityWidget,
          createdCallback: widget.createdCallback),
      UnitySimpleScreen(
          unityWidget: widget.unityWidget,
          createdCallback: widget.createdCallback),
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
