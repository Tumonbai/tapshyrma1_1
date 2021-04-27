import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(

        children: <Widget> [
          Container(
            margin: EdgeInsets.only(top: 50, left: 120),
            child: Text (
            "Tapshyrma1",
              style: TextStyle(
              fontSize: 35,
          ),
      ),
    ),
      Container(
      margin: EdgeInsets.only(top: 220, left: 100),
      child: Text( "San:$_counter",
        style: TextStyle (
    fontSize: 30,
    ),
    ),
    ),
  ],
      ),

      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 250, left: 135),
        child:Row (
          children: [RaisedButton(
            color: Colors.blue,
            onPressed: decrementCounter,
            child: Icon(Icons.remove),
          ),
        SizedBox(width: 15),
        RaisedButton(
            color: Colors.blue,
            onPressed: _incrementCounter,
        child: Icon(Icons.add),
        ),
      ],
      ),
      ),
    );
  }
}
