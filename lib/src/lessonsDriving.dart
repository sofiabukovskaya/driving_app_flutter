import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
final List<TitleLessons> titlesList = [TitleLessons("Introduction to Driving", "Beginner"),
TitleLessons("Observation at Junctions", "Beginner"), TitleLessons("Reverse Parallel Parking", "Intermediate"),
TitleLessons("Reversing Around Corner", "Intermediate"), TitleLessons("Incorrect Use of Signals", "Advanced")];
final List<IconData> icons = [Icons.drive_eta, Icons.car_rental, Icons.drive_eta_outlined, Icons.car_repair, Icons.two_wheeler];
final List<double> percents =  [0.2, 0.2, 0.5,0.5,1];

  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF37474F),
      ),
      home: Scaffold(
        backgroundColor: Color(0xFF37474F),
        body: Container(
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: titlesList.length,
            separatorBuilder: (BuildContext context, int index){
              return SizedBox(
                height: 8,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 3.5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ) ,
                color: Colors.blueGrey[700],
                child: ListTile(
                  contentPadding: const EdgeInsets.all(14.0),
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Transform.translate(offset: Offset(6,0), child: Icon(icons[index], size: 30.0, color: Colors.grey[100])),
                      VerticalDivider(color: Colors.blueGrey[50], width: 60,),
                    ],
                  ),
                  title: Transform(
                    transform:Matrix4.translationValues(-16, 0.0, 0.0),
                    child:Text(titlesList[index].title, style: TextStyle(fontSize: 18, color: Colors.grey[100])) ,
                  ),
                  subtitle: Row (
                    children: <Widget>[
                      Container(
                        transform: Matrix4.translationValues(-20, 0.0, 0.0),
                        child: LinearPercentIndicator(
                            width: 50,
                            lineHeight: 8,
                            animation: true,
                            progressColor: Colors.amberAccent,
                            backgroundColor: Colors.blueGrey[600],
                            percent: percents[index],
                            trailing: Text(titlesList[index].levelLesson, style: TextStyle(fontSize: 14, color: Colors.grey[100])),
                        ),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, size: 15.0, color: Colors.grey[100]),
                ),
              );
            },
          ),
        ),
        appBar: AppBar(
          title: Text(
            'Lessons',
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.list), onPressed: (){})
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Color(0xFF37474F),
          selectedItemColor: Colors.amberAccent,
          unselectedItemColor: Colors.grey[100],
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.book_outlined),
                title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.money_outlined),
              title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
                title: Text("")
            )
          ],
        ),
      ),
    );
  }
}

class TitleLessons {
  String title;
  String levelLesson;
  TitleLessons(this.title, this.levelLesson);
}
