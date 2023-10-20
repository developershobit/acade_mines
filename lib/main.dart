import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 184, 169, 220),
          Color.fromARGB(255, 235, 232, 239),
        ),
      ),
    ),
  );
}
