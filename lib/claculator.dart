import 'package:flutter/material.dart';

void main(){
  runApp(MyCalculator());
}
@override
class MyCalculator extends StatefulWidget{
   State<StatefulWidget> createState() {
    // TODO: implement createState
    return Mycalstate();
  }

}

class Mycalstate extends State<MyCalculator>{
  Widget build(BuildContext context) {
    return MaterialApp( home :
    Scaffold( appBar: AppBar(
    title: Text('My Calculator App'),
    ),
    body : Row(children: [Text('It will display result')
    , RaisedButton(child:Text('0') ,onPressed: null) ,
      RaisedButton(child:Text('1') ,onPressed: null) ,
      RaisedButton(child:Text('2') ,onPressed: null) ,
      RaisedButton(child:Text('3') ,onPressed: null) ,
      RaisedButton(child:Text('4') ,onPressed: null) ,
      RaisedButton(child:Text('5') ,onPressed: null) ,
      RaisedButton(child:Text('6') ,onPressed: null) ,
      RaisedButton(child:Text('7') ,onPressed: null) ,
      RaisedButton(child:Text('8') ,onPressed: null) ,
      RaisedButton(child:Text('9') ,onPressed: null) ,
      RaisedButton(child:Text('+') ,onPressed: null) ,
      RaisedButton(child:Text('*') ,onPressed: null) ,
      RaisedButton(child:Text('=') ,onPressed: null) ,









    ],)

    ));
  }


}

