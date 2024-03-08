import 'package:flutter/material.dart';

class CGS extends StatefulWidget {
  const CGS({Key? key});

  @override
  State<CGS> createState() => _CGSState();
}

class _CGSState extends State<CGS> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('Images/Pol direction.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.linearToSrgbGamma()),
          ),
          child: Stack(alignment: Alignment.center, children: [
            Positioned(
              top: 100,
              left: 100,
              child: Text(
                'මඟ පෙන්වීම',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
