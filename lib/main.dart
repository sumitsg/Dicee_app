import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

//-----------it is used to change the state

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftOne = 1;
  int rightOne = 1;

  //------Function to change number on dice--------
  void changeDiceNo() {
    setState(() {
      leftOne = Random().nextInt(6) + 1; // 1 to 6
      rightOne = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                // ------ call the function to change dice number
                changeDiceNo();
              },
              child: Image.asset('images/dice$leftOne.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                // ---- call the function to change dice number
                changeDiceNo();
              },
              child: Image.asset('images/dice$rightOne.png'),
            ),
          ),
        ],
      ),
    );
  }
}
