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

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("Screen One"),
        ),

        body :MyContainer()
      ),

    );
  }
}

class MyContainer extends StatefulWidget {

  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
//      mainAxisAlignment:MainAxisAlignment.spaceAround,
      children: <Widget>[
        Image.network(
          "https://ichef.bbci.co.uk/news/1024/cpsprodpb/83D7/production/_111515733_gettyimages-1208779325.jpg",
          height: MediaQuery.of(context).size.height*0.35,
        ),
        SecondComponent(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ThirdComponent(),
        )
      ],
    );
  }
}





class SecondComponent extends StatefulWidget {
  @override
  _SecondComponentState createState() => _SecondComponentState();
}

class _SecondComponentState extends State<SecondComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 4,top: 4),
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text("lkdlsakld"),
              new Text("okjdndkasdjl"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.star),
              new Text("32"),


            ],
          ),
        )
      ],
    );
  }
}



class ThirdComponent extends StatefulWidget {
  @override
  _ThirdComponentState createState() => _ThirdComponentState();
}

class _ThirdComponentState extends State<ThirdComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        //todo  task make compent reusable

        Column(
          children: <Widget>[
            Icon(Icons.star),
            new Text("jjkjjnjj"),

          ],
        ),

        Column(
          children: <Widget>[
            Icon(Icons.star),
            new Text("jjkjjnjj"),

          ],
        ),
        Column(
          children: <Widget>[
            Icon(Icons.star),
            new Text("jjkjjnjj"),

          ],
        ),
      ],
    );
  }
}
