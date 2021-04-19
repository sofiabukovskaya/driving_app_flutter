
import 'package:drive_project_flutter/ui/current_lesson_page/header_of_page/appbar_item.dart';
import 'package:drive_project_flutter/ui/current_lesson_page/info_lesson/info_about_lesson_item.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class InfoPageDrivingState extends StatelessWidget {
  final String textTitle;
  final String levelDriver;
  final Icon iconData;
  final double percents;

  InfoPageDrivingState(
      {Key key, @required this.textTitle, this.levelDriver, this.iconData, this.percents})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF37474F),
      ),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(340),
          child: AppBarItem(),
        ),
        body: InfoLessonItem()
      ),
    );
  }
}