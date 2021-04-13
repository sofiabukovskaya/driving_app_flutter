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
      theme: ThemeData(primaryColor: Colors.white10),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Lessons',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.wrap_text),
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(

      ),
      ),
    );
  }
}
