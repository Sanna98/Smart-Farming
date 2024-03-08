import 'package:flutter/material.dart';
import 'package:sf/Screens/CGE.dart';

class RCE extends StatefulWidget {
  const RCE({Key? key});

  @override
  State<RCE> createState() => _RCEState();
}

class _RCEState extends State<RCE> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('Images/Several Seeds.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.linearToSrgbGamma()),
          ),
          child: Stack(alignment: Alignment.center, children: [
            Positioned(
              top: 150,
              left: 30,
              child: Text(
                'RECOMMENDED CROPS',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 230,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return const CGE();
                        }));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: Text(
                  'Guidence',
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
