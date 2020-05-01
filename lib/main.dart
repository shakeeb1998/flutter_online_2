import 'package:flutter/material.dart';
import 'package:flutter_online_2/rows_and_columns.dart';
import 'package:flutter_online_2/second.dart';

void main() {
  runApp(new MyApp());
//  Person(name: "dd",);
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class ContainerVaribles {
  dynamic color = Colors.purple;
}

class _MyAppState extends State<MyApp> {
  ValueNotifier colorNotifier = new ValueNotifier({"color": ""});
  ContainerVaribles cv = new ContainerVaribles();


//  dynamic color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Screen One"),
        ),

        body: Column(
          children: <Widget>[

            Flexible(
                flex: 30,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: Colors.red,
                        child: Row(
                          children: <Widget>[
//                          new Text("ss"),
                            Flexible(
                              flex: 50,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      color: Colors.green,
                                      child: ContainerOne(width: 50.0,height: 50.0,),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 50,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                        color: Colors.grey,
                                        child: Center(
                                          child: ContainerOne(
                                            width: 50.0, height: 50.0,color: Colors.grey,),
                                        ),

                                    ),
                                  ),
                                ],
                              ),
                            )

                          ],
                        ),

                      ),
                    ),
                  ],
                )

            ),

            Flexible(
              flex: 40,
              child: Container(
                color: Colors.blue,
              ),
            ),

            Flexible(
              flex: 30,
              child: Container(
                color: Colors.purple,
              ),
            )


          ],
        ),
      ),

    );
  }
}


class ContainerOne extends StatefulWidget {
  dynamic height, width, color;


  ContainerOne(
      {this.height = 100.0, this.width = 100.0, this.color = Colors.blue}) {
    print("new object");
  }

  @override
  _ContainerOneState createState() => _ContainerOneState();
}

class _ContainerOneState extends State<ContainerOne> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("re initilizing state");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.width,
      width: widget.height,
      color: widget.color,
      child: Text("hello"),
    );
  }
}


class ContainerTwp extends StatefulWidget {
  @override
  _ContainerTwpState createState() => _ContainerTwpState();
}

class _ContainerTwpState extends State<ContainerTwp> {
  dynamic height, width, color;

  _ContainerTwpState(
      {this.color = Colors.red, this.width = 100, this.height = 100});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
    );
  }
}
