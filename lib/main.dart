import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: const Text(
              'Ask Me Anything',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            backgroundColor: Colors.blue[900],
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  const BallPage({Key key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNum = 1;

  void shakeBall() {
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () => shakeBall(),
          child: Image.asset('images/ball$ballNum.png'),
        ),
      ),
    );
  }
}
