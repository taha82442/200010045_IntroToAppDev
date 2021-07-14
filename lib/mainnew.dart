import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
@override
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }

}





class MyAppState extends State<MyApp> {
  var ques = ['Whats the weather', 'are you color blind ?'];
  var qindex = 0;

  void answer() {

    setState(() {
      qindex = qindex + 1;
    });

    print('Fuck you tooo');
  }


  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(title: Text('MY APP YO')),
        body: Column(children: [Text(ques[qindex]),
          RaisedButton(child: Text('Answer 1'), onPressed: answer),
          RaisedButton(child: Text('Answer 2'), onPressed: answer),
          RaisedButton(child: Text('Answer 3'), onPressed: answer)
        ])


    ));
  }



}