import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        body: GradientContainer()
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  Widget build(context) {
    return Container(
          decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.deepOrange,
              Colors.greenAccent
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          )
        ),
          child: const Center(
            child: Text('Hello World!', style: TextStyle(
              color: Colors.white,
              fontSize: 28
            ),),
          ),
        );
  }
}
