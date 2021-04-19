import 'package:drive_project_flutter/repositories/models/title_lessons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class InfoLessonItem extends StatelessWidget {
  final List<TitleLesson> lessons = TitleLesson.lessons;

  Widget _infoLessonItem() {
    return Column(
      children:<Widget> [
        Padding(
          padding: EdgeInsets.only(top: 30.0, left: 44.0, right: 44.0),
          child: Text("Start by taking a couple of minutes to read the info in this section you'll find that it is time well spent. For many young people, learning to drive and being in charge of motor vechicle will be the biggest responsibility in their lives so far. But with help from a good driving coach you will soon be taking it all in your stride.", textAlign: TextAlign.left,style: TextStyle(fontSize: 16, color: Colors.grey[900], height: 1.5)),
        ),
        Align(alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: ButtonTheme(
              minWidth: 300.0,
              height: 50.0,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('Take this lesson', style: TextStyle(color: Colors.blueGrey[50],fontSize: 20)),
                  onPressed: ()=> {},
                  color: (Color(0xFF37474F))
              ),
            ),
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) => _infoLessonItem();
}

