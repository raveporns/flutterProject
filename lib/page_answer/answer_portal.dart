import 'package:flutter/material.dart';
import 'answer1.dart'; // สำหรับ Answer 1
import 'answer2.dart'; // สำหรับ Answer 2
import 'answer3.dart'; // สำหรับ Answer 3
import 'answer4.dart'; // สำหรับ Answer 4

class PortalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portal Page"),
        backgroundColor: Colors.orange,
      ),
      body: Center(  // ใช้ Center widget เพื่อจัดปุ่มให้อยู่กลางหน้าจอ
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // จัดให้ปุ่มอยู่กลางในแนวตั้ง
          crossAxisAlignment: CrossAxisAlignment.center, // จัดให้ปุ่มอยู่กลางในแนวนอน
          children: [
            ElevatedButton(
              onPressed: () {
                // นำทางไปยัง Answer 1
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridLayout()),
                );
              },
              child: const Text("Answer 1"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // นำทางไปยัง Answer 2
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SocialMediaPost()),
                );
              },
              child: const Text("Answer 2"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // นำทางไปยัง Answer 3
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductLayout()),
                );
              },
              child: const Text("Answer 3"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // นำทางไปยัง Answer 4
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              child: const Text("Answer 4"),
            ),
          ],
        ),
      ),
    );
  }
}
