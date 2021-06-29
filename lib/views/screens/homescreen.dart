import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studentworker/views/screens/studentscreen/signUpScreen.dart';
//import 'package:studentworker/views/screens/studentscreen/studentsignup.dart';

import 'employerscreen/employersignup.dart';

enum StudentWorkerProject { student, employer, none }

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  StudentWorkerProject _selected = StudentWorkerProject.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 80, right: 0, left: 0, bottom: 0),
                child: Text(
                  'StudentWorker',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    letterSpacing: 2,
                    color: Color(0xff1F135B),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Who are you?',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                letterSpacing: 2,
                color: Color(0xff000000),
              )),
            ),
            SizedBox(height: 28,),

            ListTile(
              title: const Text('Student seeking part-time job'),
              leading: Radio<StudentWorkerProject>(
                value: StudentWorkerProject.student,
                groupValue: _selected,
                onChanged: (value) {
                  setState(() {
                    _selected = value!;
                  });
                },
              ),
            ),

            ListTile(
              title: const Text('Employer'),
              leading: Radio<StudentWorkerProject>(
                value: StudentWorkerProject.employer,
                groupValue: _selected,
                onChanged: (value) {
                  setState(() {
                    _selected = value!;
                  });
                },
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: SizedBox(
                  height: 45,
                  width: 200,
                  child: TextButton(
                      onPressed: () {
                        if (_selected == StudentWorkerProject.student) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                              (route) => false);
                        } else if (_selected == StudentWorkerProject.employer) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EmployerSignupScreen()),
                              (route) => false);
                        }
                      },
                      child: Text('Continue', style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xffFFFFFF),
                        ),),),
    style: ButtonStyle(
    backgroundColor:
    MaterialStateProperty.all<Color>(Color(0xFF0A674F)),
    ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
