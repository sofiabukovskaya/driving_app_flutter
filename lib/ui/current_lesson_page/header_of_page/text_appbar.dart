import 'package:drive_project_flutter/repositories/models/title_lessons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';



class TextAppBar extends StatelessWidget {
  final TitleLesson lesson;

  const TextAppBar({Key key, this.lesson}) : super(key: key);

  Widget _textAppBar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top:150.0, left: 44),
          child: Icon(Icons.drive_eta, size: 30.0, color: Colors.grey[100]),
        ),
        Divider(
            color: Colors.amberAccent,
            height: 25,
            indent: 44,
            endIndent: 300
        ),
        Padding(padding: EdgeInsets.only(left: 44.0, right: 100.0), child:
        Text(lesson.title, style: TextStyle(
            fontSize: 30, height: 1.5, color: Colors.grey[100])),
        ),
        Row (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 44.0),child:
            LinearPercentIndicator(
                width: 50,
                lineHeight: 8,
                animation: true,
                progressColor: Colors.amberAccent,
                backgroundColor: Colors.blueGrey[600],
                percent: lesson.percent,
                trailing: Text(lesson.levelLesson,
                    style: TextStyle(fontSize: 14, color: Colors.grey[100]))),
            ),
            Padding(padding: EdgeInsets.only(right: 44.0, bottom: 15.0), child:
            Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    border: Border.all(color:  Colors.white, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ), //
                child: Text("\$20", style: TextStyle(fontSize: 14, color: Colors.grey[100]))
            ),
            )
          ],
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) => _textAppBar();
}