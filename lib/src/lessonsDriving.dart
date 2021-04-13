import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF546E7A),
        accentColor: Color(0xFF607D8B)
      ),
      home: Scaffold(
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
          backgroundColor: Color(0xFF546E7A),
          selectedItemColor: Colors.amberAccent,
          unselectedItemColor: Colors.white,
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
