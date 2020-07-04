import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask me Anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = Random().nextInt(5);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset('images/ball${ballNumber + 1}.png'),
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5);
          });
          print('I got clicked');
        },
      ),
    );
  }
}
