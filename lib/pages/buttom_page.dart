import 'package:flutter/material.dart';

class ButtomPage extends StatefulWidget {
  const ButtomPage({super.key});

  @override
  State<ButtomPage> createState() => _ButtomPageState();
}
//Aylana shaklga keltirish
class _ButtomPageState extends State<ButtomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Custom Button"),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 50,
          child: MaterialButton(
            color: Colors.blue,
            onPressed: (){},
            textColor: Colors.white,
            child: Text("sign Up"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
      ),
    );
  }
}
