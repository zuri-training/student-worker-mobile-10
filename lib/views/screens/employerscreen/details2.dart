import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studentworker/views/screens/job/jobMain.dart';

import 'details.dart';

class DetailsPage2 extends StatefulWidget {
  @override
  _DetailsPage2State createState() => _DetailsPage2State();
}

class _DetailsPage2State extends State<DetailsPage2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffE5E5E5),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 70),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text(
                      'Create Your Account',
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color(0xff1F135B),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    'Organisation details',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Color(0xff000000),
                    )),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Name',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff000000),
                    )),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  MyTextField(
                      hintText: 'Company', keyboardType: TextInputType.name),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Description',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff000000),
                    )),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  MyTextField(
                      hintText:
                          'Company is the fastest-growing authentic directory that takes pride in connecting buyers and sellers across Nigeria and beyond. Our online outlet provides you with an uninterrupted shopping experience',
                      keyboardType: TextInputType.name),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Address',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff000000),
                    )),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  MyTextField(
                      hintText: '36 Adeola Odeku St, Victoria Island 100246',
                      keyboardType: TextInputType.name),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'State',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff000000),
                    )),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  MyTextField(
                      hintText: 'Lagos', keyboardType: TextInputType.name),
                  SizedBox(
                    height: 16.0,
                  ),
                  SizedBox(
                    height: 74,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsPage()));
                        },
                        child: Text(
                          "Previous",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xff0A674F),
                            ),
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xffE5E5E5)),
                        ),
                      ),
                      SizedBox(
                        width: 127,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => JobMain()));
                        },
                        child: Text(
                          "Complete",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            letterSpacing: 2,
                            color: Color(0xffFFFFFF),
                          )),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF0A674F)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

// this widget holds all field properties for this form
class MyTextField extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;

  MyTextField(
      {Key? key, this.hintText = '', this.keyboardType = TextInputType.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black38, width: 2.0)),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 5.0)),
        hintText: hintText,
      ),
      keyboardType: TextInputType.text,
    );
  }
}
