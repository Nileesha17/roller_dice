import 'package:flutter/material.dart';

import 'custom_widgets/gradient_container.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: GradientContainer([
      Colors.deepPurple,
      Colors.indigo,
    ]),
  )
  )
  );
}

