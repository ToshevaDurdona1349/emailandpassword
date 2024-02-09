import 'package:flutter/material.dart';

class GesturePage extends StatefulWidget {
  const GesturePage({super.key});

  @override
  State<GesturePage> createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Gesture Detector"),
      ),
      body: Center(
          child: GestureDetector(
            onTap: (){
              print("Text clicked");
            },
            child: Text("Click me"),
          )
      ),
    );
  }
}