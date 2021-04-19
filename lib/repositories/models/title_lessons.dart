import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TitleLesson {
  final String title;
  final String levelLesson;
  final IconData icon;
  final double percent;
  TitleLesson({@required this.title, @required this.levelLesson, @required this.icon, @required this.percent});

  static List<TitleLesson> lessons = <TitleLesson>[
    TitleLesson(title: 'Observation at Junctions', levelLesson: 'Beginner', icon: Icons.drive_eta, percent: 0.2),
    TitleLesson(title: "Reverse Parallel Parking", levelLesson: "Intermediate", icon: Icons.car_rental, percent: 0.2),
    TitleLesson(
        title: "Reversing Around Corner", levelLesson: "Intermediate", icon: Icons.drive_eta_outlined, percent: 0.5),
    TitleLesson(title: "Introduction to Driving", levelLesson: "Advanced", icon: Icons.car_repair, percent: 0.5),
    TitleLesson(title: "Incorrect Use of Signals", levelLesson: "Beginner", icon: Icons.two_wheeler, percent: 1),
  ];
}