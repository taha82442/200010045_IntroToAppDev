import 'package:flutter/material.dart';

import './display.dart';

void main() {
  runApp(MyCalculator());
}

@override
class MyCalculator extends StatefulWidget {
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Mycalstate();
  }
}

class Mycalstate extends State<MyCalculator> {
  String ons = '';

  var v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, add, pro, divide, sub, result;

  void f0() {
    v0 = '0';
    setState(() {
      ons = ons + v0;
    });
  }

  void f1() {
    v1 = '1';
    setState(() {
      ons = ons + v1;
    });
  }

  void f2() {
    v2 = '2';
    setState(() {
      ons = ons + v2;
    });
  }

  void f3() {
    v3 = '3';
    setState(() {
      ons = ons + v3;
    });
  }

  void f4() {
    v4 = '4';
    setState(() {
      ons = ons + v4;
    });
  }

  void f5() {
    v5 = '5';
    setState(() {
      ons = ons + v5;
    });
  }

  void f6() {
    v6 = '6';
    setState(() {
      ons = ons + v6;
    });
  }

  void f7() {
    v7 = '7';
    setState(() {
      ons = ons + v7;
    });
  }

  void f8() {
    v8 = '8';
    setState(() {
      ons = ons + v8;
    });
  }

  void f9() {
    v9 = '9';
    setState(() {
      ons = ons + v9;
    });
  }

  void Add() {
    add = '+';

    setState(() {
      ons = ons + add;
    });
  }

  void Pro() {
    pro = '*';
    setState(() {
      ons = ons + pro;
    });
  }

  void Divide() {
    divide = '/';
    setState(() {
      ons = ons + divide;
    });
  }

  void Subtract() {
    sub = '-';
    setState(() {
      ons = ons + sub;
    });
  }

  void Result() {
    var ans;
    String s = ons;
    var num1;
    var num2;
    for (int i = 0; i <= s.length - 1; i++) {
      if (s[i] == '+') {
        num1 = double.parse(s.substring(0, i));
        num2 = double.parse(s.substring(i + 1, s.length));

        setState(() {
          ans = num1 + num2;
          ons = ans.toString();
        });
      } else if (s[i] == '*') {
        num1 = double.parse(s.substring(0, i));
        num2 = double.parse(s.substring(i + 1, s.length));

        setState(() {
          ans = num1 * num2;
          ons = ans.toString();
        });
      } else if (s[i] == '/') {
        num1 = double.parse(s.substring(0, i));
        num2 = double.parse(s.substring(i + 1, s.length));

        setState(() {
          ans = num1 / num2;
          ons = ans.toString();
        });
      }
      if (s[i] == '-') {
        num1 = double.parse(s.substring(0, i));
        num2 = double.parse(s.substring(i + 1, s.length));

        setState(() {
          ans = num1 - num2;
          ons = ans.toString();
        });
      }
    }
  }

  void clear() {
    setState(() {
      ons = "";
    });
  }

  void dot(){
    setState(() {
      ons=ons+'.';
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My Calculator App'),
      ),
      body:Container(
        margin: EdgeInsets.all(2),
        
        child :Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
        Display(ons),
        Row(mainAxisAlignment: MainAxisAlignment.center,children: [
              RaisedButton(
                padding: EdgeInsets.symmetric(horizontal:20 , vertical:60),

              color: Colors.blue,
              child: Text('0', style: TextStyle(color: Colors.white)),
              onPressed: f0),
          RaisedButton(
              padding: EdgeInsets.symmetric(horizontal:20 , vertical:60),

              color: Colors.blue,
              child: Text('1', style: TextStyle(color: Colors.white)),
              onPressed: f1),
          RaisedButton(
              padding: EdgeInsets.symmetric(horizontal:20 , vertical:60),

              color: Colors.blue,
              child: Text('2', style: TextStyle(color: Colors.white)),
              onPressed: f2),
          RaisedButton(
              padding: EdgeInsets.symmetric(horizontal:20 , vertical:60),

              color: Colors.blue,
              child: Text('3', style: TextStyle(color: Colors.white)),
              onPressed: f3),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.center,children: [
          RaisedButton(
              padding: EdgeInsets.symmetric(horizontal:20 , vertical:60),

              color: Colors.blue,
              child: Text('4', style: TextStyle(color: Colors.white)),
              onPressed: f4),
          RaisedButton(
              padding: EdgeInsets.symmetric(horizontal:20 , vertical:60),

              color: Colors.blue,
              child: Text('5', style: TextStyle(color: Colors.white)),
              onPressed: f5),
          RaisedButton(
              padding: EdgeInsets.symmetric(horizontal:20 , vertical:60),

              color: Colors.blue,
              child: Text('6', style: TextStyle(color: Colors.white)),
              onPressed: f6),
          RaisedButton(
              padding: EdgeInsets.symmetric(horizontal:20 , vertical:60),

              color: Colors.blue,
              child: Text('*', style: TextStyle(color: Colors.white)),
              onPressed: Pro),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.center,children: [
          RaisedButton(
              padding: EdgeInsets.symmetric(horizontal:20 , vertical:60),

              color: Colors.blue,
              child: Text('7', style: TextStyle(color: Colors.white)),
              onPressed: f7),
          RaisedButton(
              padding: EdgeInsets.symmetric(horizontal:20 , vertical:60),

              color: Colors.blue,
              child: Text('8', style: TextStyle(color: Colors.white)),
              onPressed: f8),
          RaisedButton(
              padding: EdgeInsets.symmetric(horizontal:20 , vertical:60),

              color: Colors.blue,
              child: Text('9', style: TextStyle(color: Colors.white)),
              onPressed: f9),
          RaisedButton(
              padding: EdgeInsets.symmetric(horizontal:20 , vertical:60),

              color: Colors.blue,
              child: Text('+', style: TextStyle(color: Colors.white)),
              onPressed: Add),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.center,children: [
          RaisedButton(padding: EdgeInsets.symmetric(horizontal:20 , vertical:30),


              color: Colors.blue,
              child: Text('.', style: TextStyle(color: Colors.white)),
              onPressed: dot),
          RaisedButton(padding: EdgeInsets.symmetric(horizontal:20 , vertical:30),


              color: Colors.blue,
              child: Text('/', style: TextStyle(color: Colors.white)),
              onPressed: Divide),
          RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              color: Colors.blue,
              child: Text('-', style: TextStyle(color: Colors.white)),
              onPressed: Subtract),

          RaisedButton(padding: EdgeInsets.symmetric(horizontal:20 , vertical:30),

              color: Colors.blue,
              child: Text('Clear', style: TextStyle(color: Colors.white)),
              onPressed: clear),
        ]),
          RaisedButton(padding: EdgeInsets.symmetric(horizontal:150 , vertical:5),

            color: Colors.blue,
            child: Text('=', style: TextStyle(color: Colors.white)),
            onPressed: Result),
      ]),
      ),));
  }
}
