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
  ValueNotifier valueNotifier = new ValueNotifier("test val");
  String text="";


//  dynamic color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(title: new Text(text),),
          body: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
            CTextF(valueNotifier: valueNotifier,),
            CButton(valueNotifier: valueNotifier,),

            CText(valueNotifier: valueNotifier,),
          ],)
      ),

    );
  }
}


class CText extends StatefulWidget {
  ValueNotifier valueNotifier;
  CText({

   @required this.valueNotifier});
  @override
  _CTextState createState() => _CTextState();
}

class _CTextState extends State<CText> {
//  ValueNotifier valueNotifier = ValueNotifier("Text");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.valueNotifier.addListener(list);
  }

  list(){
    print("dd");
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Text(widget.valueNotifier.value);
  }
}


class CButton extends StatefulWidget {
  ValueNotifier valueNotifier;
  CButton({this.valueNotifier});
  @override
  _CButtonState createState() => _CButtonState();
}

class _CButtonState extends State<CButton> {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(onPressed: (){

    },child: new Text("tap"),);
  }
}



class CTextF extends StatefulWidget {
  ValueNotifier valueNotifier;
  CTextF({this.valueNotifier});
  @override
  _CTextFState createState() => _CTextFState();
}

class _CTextFState extends State<CTextF> {
  TextEditingController textEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController = new TextEditingController(text: widget.valueNotifier.value);

    textEditingController.addListener(listever);
  }
  listever(){
    print("val changed ${textEditingController.text   }");

    widget.valueNotifier.value=textEditingController.text;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
    );
  }
}
