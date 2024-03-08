import 'package:flutter/material.dart';
import 'package:sf/Screens/SoilContentE.dart';
import 'package:sf/Screens/SoilContentS.dart';
import 'package:sf/Screens/SoilContentT.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            width: MediaQuery.of(context).size.width - 0,
            height: 400,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("Images/soybean-plant field.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            width: MediaQuery.of(context).size.width - 0,
            height: 250,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("Images/SF Logo.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ), //SF Logo Image
          ),
          Positioned(
            top: 400,
            left: 0,
            width: MediaQuery.of(context).size.width - 0,
            height: 400,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("Images/Vegetables.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.linearToSrgbGamma()),
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
          ),

          // Text box widget with white background and placeholder
          Positioned(
            top: 350,
            left: 30,
            child: Container(
              child: const Text(
                "SMART",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
          ),

          // Text box widget with white background and placeholder
          Positioned(
            top: 400,
            left: 30,
            child: Container(
              child: const Text(
                "FARMING",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Positioned(
            top: 550,
            left: 150,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return SoilContentE();
                }));
              },
              child: Text('English'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: Colors.grey,
                foregroundColor: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 600,
            left: 150,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return SoilContentS();
                }));
              },
              child: Text('සිංහල'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: Colors.grey,
                foregroundColor: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 650,
            left: 150,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return SoilContentT();
                }));
              },
              child: Text('தமிழ்'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: Colors.grey,
                foregroundColor: Colors.white,
              ),
            ),
          ),
        ], //soyabean field image
      ),
    );
  }
}
