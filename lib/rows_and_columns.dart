import 'package:flutter/material.dart';



class ColumnDivisions extends StatefulWidget {
  @override
  _ColumnDivisionsState createState() => _ColumnDivisionsState();
}

class _ColumnDivisionsState extends State<ColumnDivisions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 20,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                    color: Colors.blue,
                    child: new Text("Shakeeb ",)
                ),
              ),
            ],
          ),
        ),
        
        Flexible(
          flex: 80,
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 2,
                  child: Column(
                    children: <Widget>[
                      Expanded(child: new Text("Shakeeb1")),
                    ],
                  )),
              Flexible(
                  flex: 8,
                  child: Container(
                    color: Colors.blue,
                    child: Column(
                      children: <Widget>[
                        Expanded(child: ListView(
                          children: <Widget>[
                            Text("Shakeeb1",style: TextStyle(fontSize: 32),),
                            Text("Shakeeb1",style: TextStyle(fontSize: 32),),
                            Text("Shakeeb1",style: TextStyle(fontSize: 32),),
                            Text("Shakeeb1",style: TextStyle(fontSize: 32),),
                            Text("Shakeeb1",style: TextStyle(fontSize: 32),),
                            Text("Shakeeb1",style: TextStyle(fontSize: 32),),
                            Text("Shakeeb1",style: TextStyle(fontSize: 32),),
                            Text("Shakeeb1",style: TextStyle(fontSize: 32),),
                            Text("Shakeeb1",style: TextStyle(fontSize: 32),),
                            Text("Shakeeb1",style: TextStyle(fontSize: 32),),
                            Text("Shakeeb1",style: TextStyle(fontSize: 32),),

                          ],
                        )),
                      ],
                    ),
                  )),
              Flexible(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      Expanded(child: new Text("Shakeeb1")),
                    ],
                  )),
            ],
          ),
        )
        
      ],
    );
  }
}
