import 'package:flutter/material.dart';
import 'hw2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AQI App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: AQIScreen(), // เรียกใช้ AQIScreen เป็นหน้าแรก
    );
  }
}



