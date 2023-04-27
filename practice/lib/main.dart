import 'package:flutter/material.dart';
import 'package:practice/expt3.dart';
import 'package:practice/expt5.dart';
import 'package:practice/expt6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const expt6(),
    );
  }
}



