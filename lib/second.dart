
import 'package:flutter/material.dart';








class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
//          color: color,
          height: 100,
          width: 100,

        ),

        new RaisedButton(onPressed:(){
          setState(() {
//                color=Colors.blue;
            Navigator.push(context, new MaterialPageRoute(builder:
                (context)=>new ScreenTwo(name: "Shakeeb",)));
          });
        } ,color: Colors.red,
          child: Column(
            children: <Widget>[
              new Text("press me"),
              new Text("tdmk"),
            ],
          ),
        )
      ],
    );
  }
}



class ScreenTwo extends StatefulWidget {
  String name;
  ScreenTwo({

    @required this.name

  });

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(widget.name),

      ),
    );
  }
}



class MyAlign extends Alignment{
  double x,y;
  MyAlign({this.x,this.y}) : super(transform(x: x), y){

  }

  static double transform( {double x}){

    return x;
  }
}