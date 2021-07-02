import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studentworker/views/screens/job/jobMain.dart';
import 'package:studentworker/views/screens/studentscreen/studentprofile.dart/resumepage2.dart';
import 'package:studentworker/views/screens/studentscreen/studentprofile.dart/resumepage1.dart';

class ResumePage3 extends StatefulWidget {
  @override
  _ResumePage2State createState() => _ResumePage2State();
}

class _ResumePage2State extends State<ResumePage3> {

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
                    'Skills',
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
                    'Skill 1',
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
                    onChanged: (value) => onChanged("skill1", value),
                      hintText: "skill1",
                      keyboardType: TextInputType.name),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Skill 2',
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
                    onChanged: (value) => onChanged("skill2", value),
                      hintText: 'Communication skills',
                      keyboardType: TextInputType.name),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Skill 3',
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
                    onChanged: (value) => onChanged("skill3", value),
                      hintText: 'Teamwork', keyboardType: TextInputType.name),
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
                                    builder: (context) => ResumePage2()));
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
                      Spacer(
                        flex: 2,
                      ),
                      Expanded(
                        flex: 3,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => JobMain()));
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

