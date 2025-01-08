// answer1.dart
import 'package:flutter/material.dart';

class GridLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid Layout"),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // แถวที่ 1
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                SizedBox(width: 20), // ระยะห่างระหว่างกล่อง
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
                SizedBox(width: 20), // ระยะห่างระหว่างกล่อง
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(height: 20), // ระยะห่างระหว่างแถว
            // แถวที่ 2
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange,
                ),
                SizedBox(width: 20), // ระยะห่างระหว่างกล่อง
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                ),
                SizedBox(width: 20), // ระยะห่างระหว่างกล่อง
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
