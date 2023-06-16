import 'package:flutter/material.dart';
import 'package:project2/gradient_container.dart';

var startAlign = Alignment.topLeft;
var endAlign = Alignment.bottomRight;

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 0, 30, 182),
          Color.fromARGB(255, 0, 143, 219),
          Color.fromARGB(255, 0, 204, 119),
          Color.fromARGB(255, 100, 128, 0)
        ]),
      ),
    ),
  );
}
