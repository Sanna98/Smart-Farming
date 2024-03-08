import 'package:flutter/material.dart';

class CGT extends StatefulWidget {
  const CGT({Key? key});

  @override
  State<CGT> createState() => _CGTState();
}

class _CGTState extends State<CGT> {
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
              left: 80,
              child: Text(
                'வழிகாட்டுதல்',
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
