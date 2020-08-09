import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/bottomToolbar.dart';
import 'widgets/VideoDescription.dart';
import 'widgets/ActionsToolbar.dart';

class HomePage extends StatelessWidget {
  Widget get topSection => Container(
    height: 100.0,
    padding: EdgeInsets.only(bottom: 15.0),
    alignment: Alignment(0.0, 1.0),
    child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Following',
        style: TextStyle(
            fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.white)),
          Container(
            width: 15.0,
          ),
          Text('|',
              style: TextStyle(
                  fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.white)),
          Container(
            width: 15.0,
          ),
          Text('For you',
              style: TextStyle(
                  fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.white))
        ]),
  );

  Widget get middleSection => Expanded(
      child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[VideoDescription(),
            ActionsToolbar()
           ]));

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Column(
        children: <Widget>[
          // Top section
          topSection,

          // Middle expanded
          middleSection,

          // Bottom Section
          BottomToolbar(),
        ],
      ),
    );
  }
}