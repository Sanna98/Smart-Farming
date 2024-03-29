import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:sf/Screens/MyHomePage.dart';

class Dashboard extends StatefulWidget {
  final token;
  const Dashboard({@required this.token, super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late String pnumber;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Map<String, dynamic> jwtDecodedToken = JwtDecoder.decode(widget.token);

    pnumber = jwtDecodedToken['pnumber'];
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //     body: Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Text(pnumber),
    //     ],
    //   ),
    // ));
    return MyHomePage();
  }
}
