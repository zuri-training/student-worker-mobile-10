
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studentworker/views/screens/getstarted.dart';


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => WelcomeScreen()));
       });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Center(
child: Text(
"StudentWorker", style: GoogleFonts.roboto(
  textStyle: TextStyle(fontWeight: FontWeight.w500,
    fontSize: 25, letterSpacing: 2,
    color: Colors.purple[900],
) ),

),

),
    );
  }
}
