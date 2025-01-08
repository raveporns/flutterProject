import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  // ตัวแปร name ที่รับค่าจาก constructor
  final String name;

  // Constructor ที่รับค่าชื่อ
  const MyHomePage(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'Hello, $name',  // แสดงชื่อที่ได้รับจาก constructor
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
