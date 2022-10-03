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

  var appBody = Column(

    children: const <Widget>[
      Text('第一行文字'),
      Text('第二行文字'),
      Expanded(
        child: FittedBox(
          fit: BoxFit.contain,
          child: FlutterLogo(),
        ),
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

