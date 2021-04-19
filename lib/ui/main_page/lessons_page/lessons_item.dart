
import 'package:drive_project_flutter/repositories/models/title_lessons.dart';
import 'package:drive_project_flutter/ui/current_lesson_page/info_driving_page.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';



class LessonsItem extends StatelessWidget {
  final TitleLesson lesson;

  const LessonsItem({Key key, @required this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      color: Colors.blueGrey[700],
      child: ListTile(
        contentPadding: const EdgeInsets.all(14.0),
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(lesson.icon, size: 30.0, color: Colors.grey[100]),
            VerticalDivider(
              color: Colors.blueGrey[50],
              width: 60,
            ),
          ],
        ),
        title: Text(lesson.title, style: TextStyle(fontSize: 18, color: Colors.grey[100])),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InfoPageDrivingState(
                textTitle: lesson.title,
                levelDriver: lesson.levelLesson,
                iconData: Icon(lesson.icon, size: 30.0, color: Colors.grey[100]),
                percents: lesson.percent,
              ),
            ),
          );
        },
        subtitle: Row(
          children: <Widget>[
            Container(
              child: LinearPercentIndicator(
                  width: 50,
                  lineHeight: 8,
                  animation: true,
                  progressColor: Colors.amberAccent,
                  backgroundColor: Colors.blueGrey[600],
                  percent: lesson.percent,
                  trailing: Text(lesson.levelLesson, style: TextStyle(fontSize: 14, color: Colors.grey[100]))),
            )
          ],
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 15.0, color: Colors.grey[100]),
      ),
    );
  }
}
