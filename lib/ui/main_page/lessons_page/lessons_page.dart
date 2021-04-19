import 'package:drive_project_flutter/repositories/models/title_lessons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'lessons_item.dart';

class LessonsPage extends StatelessWidget {
  final List<TitleLesson> lessons = TitleLesson.lessons;

  Widget _lessonsList() {
    return ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: lessons.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 8,
          );
        },
        itemBuilder: (BuildContext context, int index) => LessonsItem(lesson: lessons[index]));
  }

  @override
  Widget build(BuildContext context) => _lessonsList();
}


