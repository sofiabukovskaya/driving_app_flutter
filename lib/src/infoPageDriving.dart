import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class InfoPageDrivingState extends StatelessWidget {
  final String textTitle;
  final String levelDriver;
  final Icon iconData;
  final double percents;

  InfoPageDrivingState(
      {Key key, @required this.textTitle, this.levelDriver, this.iconData, this.percents})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF37474F),
      ),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(340),
          child: Stack(
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
            Column(
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
              Text(textTitle, style: TextStyle(
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
                       percent: percents,
                       trailing: Text(levelDriver,
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
          ),
        ],
      ),
    ),
          body: Column(
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
        ),
      ),
    );
  }
}