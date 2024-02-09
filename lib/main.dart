import 'package:flutter/material.dart';
import 'package:ngdemo4/pages/buttom_page.dart';
import 'package:ngdemo4/pages/gesture_page.dart';
import 'package:ngdemo4/pages/home_page.dart';
import 'package:ngdemo4/pages/siginin_page.dart';
import 'package:ngdemo4/pages/sliverappbar_page.dart';
import 'package:ngdemo4/pages/textfilt_page.dart';
import 'package:ngdemo4/pages/uyishi.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TaskPage (),
    );
  }
}

