import 'package:flutter/material.dart';

void main() => runApp(
  const MaterialApp(
    home: ExercizeApp(),
    debugShowCheckedModeBanner: false,
  ),
);

class ExercizeApp extends StatelessWidget
{
  const ExercizeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Exercise App",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
    );
  }
}

