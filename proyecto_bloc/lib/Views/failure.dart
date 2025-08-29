import 'package:flutter/material.dart';

class Failure extends StatelessWidget {
  const Failure({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'ERROR',
            style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
