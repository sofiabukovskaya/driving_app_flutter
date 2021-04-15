import 'package:flutter/material.dart';

class InfoPageDriving extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InfoPageDrivingState();
  }
}

class InfoPageDrivingState extends State<InfoPageDriving> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF37474F),
      ),
      home: Scaffold (
        appBar: AppBar(
          title: Text("Second screen"),
           leading: IconButton(icon: Icon(Icons.arrow_back), onPressed:() => Navigator.pop(context))
        ),
      ),
    );
  }
}