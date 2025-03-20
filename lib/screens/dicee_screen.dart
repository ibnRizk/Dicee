import 'dart:math';

import 'package:flutter/material.dart';

class Dicee extends StatefulWidget {
  const Dicee({super.key});

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
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
