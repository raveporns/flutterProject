import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AQIScreen extends StatefulWidget {
  @override
  _AQIScreenState createState() => _AQIScreenState();
}

class _AQIScreenState extends State<AQIScreen> {
  String city = "Loading...";
  int aqi = 0;
  double temperature = 0.0;
  bool isLoading = true;

  Future<void> fetchAirQuality() async {
    final latitude = 13.7563;
    final longitude = 100.5018;

    final url = Uri.parse(
        "https://api.waqi.info/feed/geo:$latitude;$longitude/?token=4503bcf5678f01a9424675db53d336e278d0f0aa");

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        if (data['status'] == "ok") {
          setState(() {
            city = data['data']['city']['name'];
            aqi = data['data']['aqi'];
            temperature = data['data']['iaqi']['t']['v'].toDouble();
            isLoading = false;
          });
        } else {
          showError();
        }
      } else {
        showError();
      }
    } catch (e) {
      showError();
    }
  }

  void showError() {
    setState(() {
      city = "Error";
      aqi = 0;
      temperature = 0.0;
      isLoading = false;
    });
  }

  Color getAqiColor(int aqi) {
    if (aqi <= 50) return Colors.green;
    if (aqi <= 100) return Colors.yellow;
    if (aqi <= 150) return Colors.orange;
    if (aqi <= 200) return Colors.red;
    if (aqi <= 300) return Colors.purple;
    return Colors.brown;
  }

  String getAqiStatus(int aqi) {
    if (aqi <= 50) return "Good";
    if (aqi <= 100) return "Moderate";
    if (aqi <= 150) return "Unhealthy (Sensitive)";
    if (aqi <= 200) return "Unhealthy";
    if (aqi <= 300) return "Very Unhealthy";
    return "Hazardous";
  }

  @override
  void initState() {
    super.initState();
    fetchAirQuality();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          "Air Quality Index",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
              ),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // 🏙️ ชื่อเมือง
                  AnimatedDefaultTextStyle(
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Roboto',
                    ),
                    duration: Duration(milliseconds: 500),
                    child: Text(city, textAlign: TextAlign.center),
                  ),

                  SizedBox(height: 20),

                  // 📊 AQI แสดงค่าและสี
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: getAqiColor(aqi),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          "$aqi",
                          style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          getAqiStatus(aqi),
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                  // 🌡️ แสดงอุณหภูมิ
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    padding: EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.thermostat, size: 50, color: Colors.white),
                        SizedBox(height: 5),
                        Text(
                          "${temperature.toStringAsFixed(1)}°C",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Current Temperature",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30),

                  // 🔄 ปุ่ม Refresh
                  ElevatedButton.icon(
                    onPressed: fetchAirQuality,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 5,
                      shadowColor: Colors.black45,
                    ),
                    icon: Icon(Icons.refresh, color: Colors.white),
                    label: Text(
                      "Refresh",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
