import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Days of the Week"),
        backgroundColor: Colors.yellow,
      ),
      body: full(),
    ),
  ));
}
class full extends StatefulWidget {
  @override
  State<full> createState() => _fullState();
}

class _fullState extends State<full> {
  int leftimg= 1;
  int rightimg=4;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "changed",
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftimg=Random().nextInt(6)+1;
                      rightimg=Random().nextInt(6)+1;


                    });
                  },
                  child: Image.asset('images/i-$leftimg.jpg'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                   setState((){
                     leftimg=Random().nextInt(6)+1;
                     rightimg=Random().nextInt(6)+1;


                  });
                  },
                  child: Image.asset('images/i-$rightimg.jpg'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}





