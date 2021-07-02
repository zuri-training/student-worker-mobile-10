import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studentworker/views/screens/studentscreen/studentprofile.dart/resumepage1.dart';
import 'package:studentworker/views/screens/studentscreen/studentprofile.dart/resumepage3.dart';

class ResumePage2 extends StatefulWidget {
  @override
  _ResumePage2State createState() => _ResumePage2State();
}

class _ResumePage2State extends State<ResumePage2> {

  late SharedPreferences sp;

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((value) => sp = value);
  }

  void onChanged(key, value) => sp.setString(key, value);

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
                    'Education',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      letterSpacing: 1,
                      color: Color(0xff000000),
                    )),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'University',
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
                    onChanged: (value) => onChanged("school", value),
                      hintText: "University Of Lagos",
                      keyboardType: TextInputType.name),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Course Of Study',
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
                    onChanged: (value) => onChanged("course", value),
                      hintText: 'Mechanical Engineering',
                      keyboardType: TextInputType.name),
                  SizedBox(
                    height: 16.0,
                  ),
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
                            SizedBox(
                              height: 3,
                            ),
                            MyTextField(
                              onChanged: (value) => onChanged("startyear", value),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                              onChanged: (value) => onChanged("endyear", value),
                                hintText: '2022',
                                keyboardType: TextInputType.number),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 74,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: ElevatedButton(
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
                      ),
                      Spacer(flex: 2),
                      Expanded(
                        flex: 3,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResumePage3()));
                          },
                          child: Text(
                            "Next",
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xffFFFFFF),
                            )),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF0A674F)),
                          ),
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

