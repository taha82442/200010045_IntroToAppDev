import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Function selectHandler;
  final text;

  Buttons(this.selectHandler, this.text);

  @override
  Widget build(BuildContext context) {
    return Column( children: [

       Row(
        children: [
          RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.blue,
              child: Text('0'),
              onPressed: null),
          RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.blue,
              child: Text('1'),
              onPressed: null),
          RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.blue,
              child: Text('2'),
              onPressed: null),
          RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.blue,
              child: Text('3'),
              onPressed: null),
        ],
      ),


    ]);


  }
}
