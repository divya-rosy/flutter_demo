import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: const GradientContainer(Color.fromARGB(255, 49, 137, 209), Color.fromARGB(255, 29, 161, 131)),
      ),
    ),
  );
}