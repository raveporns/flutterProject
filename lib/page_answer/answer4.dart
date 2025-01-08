import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Section
          Container(
            width: double.infinity,
            height: 180,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Profile Image
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "User Name",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Profile Information Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                // Email Row
                Row(
                  children: const [
                    Icon(Icons.email, color: Colors.blue, size: 20),
                    SizedBox(width: 15),
                    Text("user@example.com", style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(height: 15),
                // Phone Number Row
                Row(
                  children: const [
                    Icon(Icons.phone, color: Colors.blue, size: 20),
                    SizedBox(width: 10),
                    Text("+123 456 789", style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(height: 15),
                // Address Row (Fixed)
                Row(
                  children: const [
                    Icon(Icons.location_on, color: Colors.blue, size: 20),
                    SizedBox(width: 10),
                    Text("123 Main Street", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 430),

          // Menu Section 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,  
              children: [
                // Edit Profile Button
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30), 
                      minimumSize: Size(150, 50), 
                    ),
                    child: const Text("Edit Profile", style: TextStyle(fontSize: 16)),
                  ),
                ),
                const SizedBox(width: 20),  
                // Logout Button
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30), 
                      minimumSize: Size(150, 50), 
                    ),
                    child: const Text("Logout", style: TextStyle(fontSize: 16)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
