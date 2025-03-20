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
    ),
  ));
}
