import 'package:fish__app/catagerory.dart';
import 'package:fish__app/deliveradd.dart';
import 'package:fish__app/deliveryreg.dart';
import 'package:fish__app/forgot.dart';
import 'package:fish__app/maincatogoryess.dart';
import 'package:fish__app/mainpage.dart';
import 'package:fish__app/makingpage.dart';
import 'package:fish__app/makingpage222.dart';
import 'package:fish__app/payments.dart';
import 'package:fish__app/recipeee.dart';
import 'package:fish__app/regsteration.dart';
import 'package:fish__app/response.dart';
import 'package:fish__app/seetingpages.dart';
import 'package:fish__app/settings.dart';
import 'package:fish__app/singleproduct.dart';
import 'package:fish__app/socialloginpage.dart';
import 'package:fish__app/tesingpage.dart';

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
      home: sociallogin(),
    );
  }
}
