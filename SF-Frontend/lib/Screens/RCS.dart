import 'package:flutter/material.dart';
import 'package:sf/Screens/CGS.dart';

class RCS extends StatefulWidget {
  const RCS({super.key});

  @override
  State<RCS> createState() => _RCSState();
}

class _RCSState extends State<RCS> {
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
              left: 80,
              child: Text(
                'නිර්දේශිත බෝග',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 170,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return const CGS();
                  }));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: Text(
                  'මඟ පෙන්වීම',
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
