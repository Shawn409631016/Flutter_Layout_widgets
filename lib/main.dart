import 'package:flutter/material.dart';

void main() {
  const appTitle = Text('Layout_widgets'),
      hiFlutter = Text(
        "Hi, Flutter.\n今天是221003" ,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.red,
          decoration:TextDecoration.underline,
        ),
      );

  var img = Image.network("https://i.epochtimes.com/assets/uploads/2021/08/id13156667-shutterstock_376153318-600x400.jpg");

  // var appBody = Column(
  //
  //   children: const <Widget>[
  //     Text('物件1', style: TextStyle(fontSize: 50),),
  //     Text('物件2', style: TextStyle(fontSize: 50),),
  //     Text('物件3', style: TextStyle(fontSize: 50),),
  //   ],
  //
  //
  // );
  // var appBody = Row(
  //
  //   children: const <Widget>[
  //     Expanded(
  //       child: Text('物件1', style: TextStyle(fontSize: 50),),
  //     ),
  //     Expanded(
  //       child: Text('物件2', style: TextStyle(fontSize: 50),),
  //     ),
  //     Expanded(
  //       child: Text('物件3', style: TextStyle(fontSize: 50),),
  //     ),
  //   ],
  //
  // );
  var appBody = GridView.count(
    primary: false,
    padding: const EdgeInsets.all(20),
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    crossAxisCount: 2,
    children: <Widget>[
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[100],
        child: const Text("He'd have you all unravel at the"),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[200],
        child: img,
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[300],
        child: img,
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[400],
        child: const Text('Who scream'),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[500],
        child: const Text('Revolution is coming...'),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[600],
        child: img,
      ),
    ],

  );

  var appBar = AppBar(
    title: appTitle,
    backgroundColor: Colors.lightBlue[400],
  );

  var app = MaterialApp(
    home: Scaffold(
      appBar: appBar,
      body: appBody,
      backgroundColor: Color(0xFFFFF7D5),
    ),
  );


  runApp(app);
}

