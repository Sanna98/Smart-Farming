import 'package:flutter/material.dart';
import 'package:sf/Screens/CGT.dart';

class RCT extends StatefulWidget {
  const RCT({super.key});

  @override
  State<RCT> createState() => _RCTState();
}

class _RCTState extends State<RCT> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('Images/Several Seeds.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.linearToSrgbGamma()),
          ),
          child: Stack(alignment: Alignment.center, children: [
            Positioned(
              top: 150,
              left: 40,
              child: Text(
                'பரிந்துரைக்கப்பட்ட \n பயிர்கள்',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 140,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return const CGT();
                  }));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: Text(
                  'வழிகாட்டுதல்',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
