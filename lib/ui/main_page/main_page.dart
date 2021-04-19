import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'lessons_page/lessons_page.dart';

class MainPage extends StatefulWidget {
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  final List<Widget> pages = <Widget>[
    LessonsPage(),
    Container(color: Colors.red),
    Container(color: Colors.green),
    Container(color: Colors.blue),
  ];

  Widget _tabBarView() => TabBarView(children: pages);

  Widget _tabBar() {
    return TabBar(
      tabs: [
        Tab(
          icon: Icon(Icons.book_outlined),
        ),
        Tab(
          icon: Icon(Icons.calendar_today),
        ),
        Tab(
          icon: Icon(Icons.money_outlined),
        ),
        Tab(
          icon: Icon(Icons.person),
        )
      ],
      labelColor: Colors.amberAccent,
      unselectedLabelColor: Colors.grey[100],
      indicatorSize: TabBarIndicatorSize.label,
      indicatorPadding: EdgeInsets.all(5),
      indicatorColor: Colors.amberAccent,
    );
  }

  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xFF37474F)),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Lessons',
              ),
              centerTitle: true,
              actions: <Widget>[IconButton(icon: Icon(Icons.list), onPressed: () {})],
            ),
            backgroundColor: Color(0xFF37474F),
            body: _tabBarView(),
            bottomNavigationBar: _tabBar()),
      ),
    );
  }
}
