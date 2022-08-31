import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ProfileScreenState();
  }
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // key: _scaffoldKey,
        appBar: AppBar(
          title: Text('Profile'),
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
