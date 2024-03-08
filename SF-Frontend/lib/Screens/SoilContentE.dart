import 'package:flutter/material.dart';
// import 'package:sf/Screens/RCE.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SoilContentE extends StatefulWidget {
  const SoilContentE({Key? key}) : super(key: key);

  @override
  _SoilContentEState createState() => _SoilContentEState();
}

class _SoilContentEState extends State<SoilContentE> {
  final TextEditingController potassiumController = TextEditingController();
  final TextEditingController nitrogenController = TextEditingController();
  final TextEditingController phosphorousController = TextEditingController();
  final TextEditingController phController = TextEditingController();

  Future<void> suggestCrop() async {
    const String url =
        'http://localhost:3000/crops/getCrops'; // Update with your server URL
    final Map<String, dynamic> requestData = {
      'potassium': double.parse(potassiumController.text),
      'nitrogen': double.parse(nitrogenController.text),
      'phosphorous': double.parse(phosphorousController.text),
      'ph': double.parse(phController.text),
    };

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(requestData),
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        // Process the responseData as needed
        print(responseData);
      } else {
        print(
            'Failed to get recommended crops. Status Code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
    }
  }

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
                left: 100,
                child: Text(
                  'Enter soil \n content',
                  style: TextStyle(
                    fontSize: 50,
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
                      hintText: "Enter Potassium Value",
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
                      hintText: "Enter Nitrogen Value",
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
                      hintText: "Enter Phosphorous Value",
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
                      hintText: "Enter Ph Value",
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
                      onPressed: suggestCrop,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      child: const Text(
                        'Suggest a Crop',
                        style: TextStyle(fontSize: 30),
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
