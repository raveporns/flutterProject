import 'package:flutter/material.dart';
import 'page_answer/answer1.dart';
import 'page_answer/answer2.dart';
import 'page_answer/answer3.dart';
import 'page_answer/answer4.dart';
import 'page_answer/answer_portal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       
        // เลือกหน้าแสดงตรงนี้
       // body: ProfilePage(),  
        // body: ProductLayout(),  
        // body: SocialMediaPost(),  
        // body: GridLayout(),  
        body: PortalPage(),
      ),
    );
  }
}
