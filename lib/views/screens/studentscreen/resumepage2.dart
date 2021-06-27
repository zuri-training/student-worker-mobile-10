import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studentworker/views/screens/studentscreen/resumepage1.dart';
import 'package:studentworker/views/screens/studentscreen/resumepage3.dart';


class ResumePage2 extends StatefulWidget {


  @override
  _ResumePage2State createState() => _ResumePage2State();
}

class _ResumePage2State extends State<ResumePage2> {
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
                    child: Text('Create Your Resume', style: GoogleFonts.roboto(
                        textStyle: TextStyle(fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Color(0xff1F135B),
                        ) ),),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),

                  Text('Education',style: GoogleFonts.roboto(
                      textStyle: TextStyle(fontWeight: FontWeight.w500,
                        fontSize: 17, letterSpacing: 1,
                        color: Color(0xff000000),
                      ) ), ),
                  SizedBox(height: 16.0,),

                  Text('University',  style: GoogleFonts.roboto(
                      textStyle: TextStyle(fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xff000000),
                      ) ),),
                  SizedBox(height: 3.0,),

                  MyTextField(
                      hintText: "University Of Lagos",
                      keyboardType: TextInputType.name
                  ),
                  SizedBox(height: 16.0,),

                  Text('Course Of Study',  style: GoogleFonts.roboto(
                      textStyle: TextStyle(fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xff000000),
                      ) ),),
                  SizedBox(height: 3.0,),

                  MyTextField(
                      hintText: 'Mechanical Engineering',
                      keyboardType: TextInputType.name),
                  SizedBox(height: 16.0,),

                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Start Year',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xff000000),
                                    ))),
                            SizedBox(height: 3,),

                            MyTextField(
                                hintText: '2019',
                                keyboardType: TextInputType.text),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),

                      Expanded(
                        child: Column(
                          children: [
                            Text('End Year',
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
                                hintText: '2022',
                                keyboardType: TextInputType.number),
                          ],
                        ),
                      ),

                    ],
                  ),
SizedBox(height: 74,),

                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResumePage()));
                        },
                        child: Text(
                          "Previous",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Color(0xffFFFFFF),
                              )),
                        ),

                      ),
                      SizedBox(width: 50,),

                      ElevatedButton(
                        onPressed: () {

                          Navigator.push(context,MaterialPageRoute(builder: (context) => ResumePage3()));
                        },

                        child: Text("Next",
                          style:GoogleFonts.roboto(
                              textStyle: TextStyle(fontWeight: FontWeight.w400,
                                fontSize: 18, letterSpacing: 2,
                                color: Color(0xffFFFFFF),
                              ) ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF0A674F)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}

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

