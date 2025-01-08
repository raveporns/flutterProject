import 'package:flutter/material.dart';

class SocialMediaPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Social Media Post"),
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // แถวที่ 1 (ชื่อและเวลา)
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "User name",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "5 minutes ago",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              // แถวที่ 2 (โพสต์)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 400,
                    height: 200,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          offset: Offset(0, 3), // ขยับเงา
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // แถวที่ 3 (ปุ่ม)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      print('Like pressed');
                    },
                    label: Text("Like"),
                    style: ElevatedButton.styleFrom(),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      print('Comment pressed');
                    },
                    label: Text("Comment"),
                    style: ElevatedButton.styleFrom(),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      print('Share pressed');
                    },
                    label: Text("Share"),
                    style: ElevatedButton.styleFrom(),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
