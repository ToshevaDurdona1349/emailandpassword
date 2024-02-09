import 'package:flutter/material.dart';
// rasmga soya solish orqasi ko'rinib turadi
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text ("Custom Images"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration:BoxDecoration(
            image: DecorationImage(
                image:AssetImage("assets/img.png"),
                // konenierni to'liq qoplavaladi
                fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ) ,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            //   orqa foni ko'rinadi
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.2),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
