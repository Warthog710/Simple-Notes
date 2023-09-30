import 'package:flutter/material.dart';

import 'package:simple_notes/screens/home.dart';

void main() {
  runApp(SimpleNotes());
}

class SimpleNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Notes',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
