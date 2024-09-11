import 'package:flutter/material.dart';

class test2 extends StatelessWidget {
  const test2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("asset/image/sal1.jpeg"))),
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black12, Colors.black]))),
      ),
    );
  }
}
