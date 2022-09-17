import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Center(
          child: const
          Text('Hello World',
            style: TextStyle(
                fontSize: 25,
                color: Colors.purple,
                letterSpacing: 1.5,
            ),
    ),
        ),
      ),
  ),
  ));
}

