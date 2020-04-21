import 'package:flutter/material.dart';

void main() {

  runApp(new MyApp());
//  Person(name: "dd",);
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  dynamic cic = new ContainerWithInContainer();
  static dynamic color = Colors.purple;
  dynamic container = new Container(
    height: 100,
    width: 100,
    color: color,);


//  dynamic color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home:new  Scaffold(
        appBar: new AppBar(
          title: new Text("Screen One"),
        ),

        body : new InkWell(
          child: ContainerWithInContainer(),
          onTap: (){
            print("shakeeb");
            setState(() {
              color=Colors.blue;
            });
          },
        ),
      ),

    );
  }
}


class ContainerWithInContainer extends StatefulWidget {
  @override
  _ContainerWithInContainerState createState() => _ContainerWithInContainerState();
}

class _ContainerWithInContainerState extends State<ContainerWithInContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(0.5,0),
            child: Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
          ),
          Align(
            alignment: MyAlign(x: -1,y: -1),
            child: Container(
              color: Colors.purple,
              height: 50,
              width: 50,
            ),
          ),

        ],
      ),
    );
  }
}



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