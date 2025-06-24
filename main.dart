import 'package:flutter/material.dart';
import 'package:project/dash.dart';
import 'package:project/flutter.dart';
import 'package:project/home.dart';

import 'Botnav.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: flutter(),
    );
  }
}
