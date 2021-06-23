

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xE5E5E5),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text('StudentWorker',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(fontWeight: FontWeight.w500,
                  fontSize: 20, letterSpacing: 2,
                  color: Color(0x1F135B),
                ) ), ),
            SizedBox(height: 10,),

            Text('Who are you?',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(fontWeight: FontWeight.w400,
                    fontSize: 16, letterSpacing: 2,
                    color: Color(0x000000),
                  ) ),
            )
          ],
        ),
      ),
    );
  }
}

