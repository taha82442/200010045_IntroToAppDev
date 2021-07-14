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
  String ons='';



  var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,add, pro, result;
  void f0(){
    v0='0';
    setState(() {
      ons=ons+v0;
    });


  }
  void f1(){
    v1='1';
    setState(() {
      ons =ons+v1;
    });

  }void f2(){
    v2='2';
    setState(() {
      ons=ons+v2;
    });

  }
  void f3(){
    v3='3';
    setState(() {
      ons=ons+v3;
    });

  }void f4(){
    v4='4';
    setState(() {
      ons=ons+v4;
    });

  }void f5(){
    v5='5';
    setState(() {
      ons=ons+v5;
    });

  }void f6(){
    v6='6';
    setState(() {
      ons=ons+v6;
    });

  }void f7(){
    v7='7';
    setState(() {

      ons=ons+v7;
    });
  }void f8(){
    v8='8';
    setState(() {

      ons=ons+v8;
    });
  }
  void f9(){
    v9='9';
    setState(() {
      ons=ons+v9;
    });
  }

  void Add() {
    add = '+';

    setState(() {
      ons=ons+add;
    });

  }

  void Pro(){
    pro='*';
    setState(() {

      ons=ons+pro;

    });
  }

  void Result(){
    int ans=0;
    String s=ons;
    int num1;
    int num2;
    for( int i=0; i<=s.length-1 ;i++){
      if(s[i]=='+'){
        num1=int.parse(s.substring(0,i));
        num2=int.parse(s.substring(i+1, s.length));
        ans=num1+num2;
        setState(() {
          ans=num1+num2;
          ons=ans.toString();
        });

      }
      else if (s[i]=='*'){
        num1=int.parse(s.substring(0,i));
        num2=int.parse(s.substring(i+1, s.length));
        ans=num1*num2;
        setState(() {

          ans=num1*num2;
          ons=ans.toString();
        });
      }
    }

  }


  void clear(){
    setState(() {
      ons="";
    });
  }







  Widget build(BuildContext context) {
    return MaterialApp( home :
    Scaffold( appBar: AppBar(
      title: Text('My Calculator App'),
    ),
        body : Column(children: [Text(ons)
          , Row(children : [RaisedButton(child:Text('0') ,onPressed: f0) ,
            RaisedButton(child:Text('1') ,onPressed: f1) ,
            RaisedButton(child:Text('2') ,onPressed: f2) ,]),
          Row( children :[
            RaisedButton(child:Text('3') ,onPressed: f3) ,
            RaisedButton(child:Text('4') ,onPressed: f4) ,
            RaisedButton(child:Text('5') ,onPressed: f5) ,]),

          Row (children :[
            RaisedButton(child:Text('6') ,onPressed: f6) ,
            RaisedButton(child:Text('7') ,onPressed: f7) ,
            RaisedButton(child:Text('8') ,onPressed: f8) ,]),
          Row (children :[
            RaisedButton(child:Text('9') ,onPressed: f9) ,
            RaisedButton(child:Text('+') ,onPressed: Add) ,
            RaisedButton(child:Text('*') ,onPressed: Pro) ,]),
          RaisedButton(child:Text('=') ,onPressed: Result) ,
          RaisedButton(child:Text('Clear') , onPressed : clear),









        ],)

    ));
  }


}
