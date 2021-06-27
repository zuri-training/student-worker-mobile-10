import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studentworker/views/screens/studentscreen/resumepage2.dart';

class ResumePage extends StatefulWidget {
  @override
  _ResumePageState createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
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
                      'Create Your Resume',
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
                    'Personal Details',
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
                    'First name',
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
                      hintText: 'Ayo',
                      keyboardType: TextInputType.name
                    ),

                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Last name',
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
                    hintText: 'David',
                      keyboardType: TextInputType.name),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Mobile number',
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
                  Row(
                    children: [
                      Expanded(
                        child: MyTextField(
                  hintText: '+234',
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        flex: 3,
                        child: MyTextField(
                            hintText: '8074000011',
                            keyboardType: TextInputType.number),

                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Current State',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Color(0xff000000),
                                ))),
                            SizedBox(height: 3,),

                            MyTextField(
                                hintText: 'Lagos',
                                keyboardType: TextInputType.text),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('City',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xff000000),
                                    ))),
                            SizedBox(
                              height: 3.0,
                            ),
                            MyTextField(
                                hintText: 'Apapa',
                                keyboardType: TextInputType.text),
                          ],
                        ),
                      ),

                    ],
                  ),


                 SizedBox(height: 74,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResumePage2()));
                        },
                        child: Text(
                          "Next",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                letterSpacing: 2,
                                color: Color(0xffFFFFFF),
                              )),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF0A674F)),
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

  MyTextField({Key? key, this.hintText = '', this.keyboardType = TextInputType.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder:OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black38, width: 2.0)),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 5.0)),
        hintText: hintText,
      ),
      keyboardType: TextInputType.text,
    );
  }
}
