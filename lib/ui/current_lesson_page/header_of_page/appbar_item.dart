
import 'package:drive_project_flutter/repositories/models/title_lessons.dart';
import 'package:drive_project_flutter/ui/current_lesson_page/header_of_page/text_appbar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class AppBarItem extends StatelessWidget {
  final TitleLesson lesson;

  const AppBarItem({Key key, this.lesson}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return Stack(
     children: <Widget>[
       AppBar(
         leading: IconButton(icon: Icon(Icons.arrow_back),
             onPressed: () => Navigator.pop(context)),
         flexibleSpace: Container(
           decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage('images/background_new_york.jpg'),
                 colorFilter: ColorFilter.mode(
                     Colors.black.withOpacity(0.2), BlendMode.dstATop),
                 fit: BoxFit.fill,
               )
           ),
         ),
       ),
       TextAppBar()
     ],
   );
  }
}
