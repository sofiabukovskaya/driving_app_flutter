import 'package:flutter/material.dart';

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
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF37474F),
        accentColor: Color(0xFF607D8B)
      ),
      home: Scaffold(
        backgroundColor: Color(0xFF37474F),
        body: Container(
          child: ListView.separated(
            padding: const EdgeInsets.all(5),
            itemCount: titlesList.length,
            separatorBuilder: (BuildContext context, int index) => Divider(color: Colors.grey[100]),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  title: Text(titlesList[index].title, style: TextStyle(fontSize: 22, color: Colors.grey[100])),
                  subtitle: Text(titlesList[index].levelLesson, style: TextStyle(fontSize: 18, color: Colors.grey[100])),
                  leading: Icon(icons[index], color: Colors.grey[100],),
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
