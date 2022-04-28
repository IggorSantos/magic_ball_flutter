import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[900],
        ),
        body: MagicBallPage(),
      ),
    ),
  );
}



class MagicBallPage extends StatefulWidget {
  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
    child: Container(
      child: FlatButton(
          child: Image(image: AssetImage('images/ball$ballNumber.png')),
          onPressed: (){
            setState((){
              ballNumber = Random().nextInt(5) + 1;
            }
          );
         },
        ),
      ),
    );
  }
}
