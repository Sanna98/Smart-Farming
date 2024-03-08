import 'package:flutter/material.dart';
import 'package:sf/Screens/RCS.dart';

class SoilContentS extends StatelessWidget {
  const SoilContentS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('Images/Soil Full Hand.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.linearToSrgbGamma()),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Background widget
              Container(
                color: Colors.transparent,
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
              // Text widget with positions
              const Positioned(
                top: 250,
                left: 20,
                child: Text(
                  'පාංශු අන්තර්ගතය\n ඇතුළත් කරන්න',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 400,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'පොටෑසියම් අගය ඇතුළත් කරන්න',
                      labelStyle:
                          const TextStyle(fontSize: 20, color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      fillColor: Colors.grey,
                      filled: true,
                    ),
                    keyboardType: TextInputType.number,
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'නයිට්රජන් අගය ඇතුල් කරන්න',
                      labelStyle:
                          const TextStyle(fontSize: 20, color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      fillColor: Colors.grey,
                      filled: true,
                    ),
                    keyboardType: TextInputType.number,
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'පොස්පරස් අගය ඇතුලත් කරන්න',
                      labelStyle:
                          const TextStyle(fontSize: 20, color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      fillColor: Colors.grey,
                      filled: true,
                    ),
                    keyboardType: TextInputType.number,
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Ph අගය ඇතුලත් කරන්න',
                      labelStyle:
                          const TextStyle(fontSize: 20, color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      fillColor: Colors.grey,
                      filled: true,
                    ),
                    keyboardType: TextInputType.number,
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return const RCS();
                        }));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      child: const Text(
                        'බෝගයක් යෝජනා කරන්න',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
