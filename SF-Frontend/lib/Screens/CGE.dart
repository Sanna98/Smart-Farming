import 'package:flutter/material.dart';

class CGE extends StatefulWidget {
  const CGE({Key? key});

  @override
  State<CGE> createState() => _CGEState();
}

class _CGEState extends State<CGE> {
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
              left: 118,
              child: Text(
                'GUIDENCE',
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
