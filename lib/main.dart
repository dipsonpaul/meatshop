import 'package:fish__app/refer.dart';
import 'package:fish__app/socialloginpage.dart';
import 'package:fish__app/wallet.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Refer(),
    );
  }
}
