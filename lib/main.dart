import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        elevation: 5,
        title: Center(
            child: Text(
          'dicee',
        )),
        backgroundColor: Colors.red,
      ),
      body: dicee(),
    ),
  ));
}

class dicee extends StatefulWidget {
  const dicee({super.key});

  @override
  State<dicee> createState() => _diceeState();
}

class _diceeState extends State<dicee> {
  int leftdiceenum = 6;
  int rightdiceenum = 6;
  Function? randomnum() {
    setState(() {
      leftdiceenum = Random().nextInt(6) + 1;
      rightdiceenum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                randomnum();
              },
              child: Image.asset(
                'images/dice$leftdiceenum.png',
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                randomnum();
              },
              child: Image.asset(
                'images/dice$rightdiceenum.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
