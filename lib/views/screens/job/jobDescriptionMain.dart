import 'dart:ui';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'description.dart';

class JobDescriptionMain extends StatefulWidget {
  @override
  _JobDescriptionMainstate createState() {
    return _JobDescriptionMainstate();
  }
}

class _JobDescriptionMainstate extends State<JobDescriptionMain> {
  bool showMore = false;

  int currentNavIndex = 0;

  Widget buildJobList() {
    List<JobModel> jobs =
        List<JobModel>.generate(showMore ? 10 : 1, (index) => JobModel());
    return ListView.builder(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: jobs.length,
      itemBuilder: (_, i) => JobWidget(jobs[i]),
    );
  }

  void onNavItemTap(int i) {
    // Add a switch case statement here to perfom
    // some action for a perticular item
    setState(() {
      currentNavIndex = i;
    });
  }

  Widget buildAbout() {
    return Text(
      'About Company',
      style: GoogleFonts.roboto(
          textStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 17,
        color: Color(0xff000000),
      )),
    );
  }

  Widget buildText1() {
    return Text(
      'Company is the fastest growing authentic directory that takes pride in connecting buyers and sellers across Nigeria and beyond. Our online outlet provides you with an uninterrupted shopping experience. ',
      style: GoogleFonts.roboto(
          textStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        color: Color(0xff000000),
      )),
    );
  }

  Widget buildText2() {
    return Text(
      'Responsibility Of Student',
      style: GoogleFonts.roboto(
          textStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 17,
        color: Color(0xff000000),
      )),
    );
  }

  Widget buildText3() {
    return Text(
      '1. Prepare and develop tools'
      '\n2. Lead the entire student team'
      '\n3. Utilize backend stuff'
      '\n4. Design and code learning',
      style: GoogleFonts.roboto(
          textStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        color: Color(0xff000000),
      )),
    );
  }

  Widget buildText4() {
    return Text(
      'Who can apply',
      style: GoogleFonts.roboto(
          textStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 17,
        color: Color(0xff000000),
      )),
    );
  }

  Widget buildText5() {
    return Text(
      'Candidates who:'
      ' \n1. Available to work for duration of 3months'
      '\n2. Can resume work immediately'
      '\n3. Have relevant skills and interests'
      '\n4. Ready to learn',
      style: GoogleFonts.roboto(
          textStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        color: Color(0xff000000),
      )),
    );
  }

  Widget buildApplyBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xff0A674F),
          // elevation: 8,
        ),
        onPressed: () => print("Login Pressed"),
        child: Text(
          'Apply',
          style: GoogleFonts.roboto(
              textStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xffF8F8F8),
          )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onNavItemTap,
        currentIndex: currentNavIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.work_outline,
              color: Color(0xff77E3C7),
            ),
            label: 'Jobs',
            // style: GoogleFonts.roboto(
            //     textStyle: TextStyle(
            //   fontWeight: FontWeight.w400,
            //   fontSize: 12,
            //   letterSpacing: 0.4,
            //   color: Color(0xff999999),
            // )),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outlined,
              color: Color(0xff77E3C7),
            ),
            label: 'Applications',
            // style: GoogleFonts.roboto(
            //     textStyle: TextStyle(
            //   fontWeight: FontWeight.w400,
            //   fontSize: 12,
            //   letterSpacing: 0.4,
            //   color: Color(0xff999999),
            // )),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.file_copy_outlined,
              color: Color(0xff77E3C7),
            ),
            label: 'Resume',
            // style: GoogleFonts.roboto(
            //     textStyle: TextStyle(
            //   fontWeight: FontWeight.w400,
            //   fontSize: 12,
            //   letterSpacing: 0.4,
            //   color: Color(0xff999999),
            // )),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_pin,
              color: Color(0xff77E3C7),
            ),
            label: 'Profile',
            // style: GoogleFonts.roboto(
            //     textStyle: TextStyle(
            //   fontWeight: FontWeight.w400,
            //   fontSize: 12,
            //   letterSpacing: 0.4,
            //   color: Color(0xff999999),
            // )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 80,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildJobList(),
            SizedBox(height: 10),
            buildAbout(),
            SizedBox(height: 5),
            buildText1(),
            SizedBox(height: 10),
            buildText2(),
            SizedBox(height: 5),
            buildText3(),
            SizedBox(height: 10),
            buildText4(),
            SizedBox(height: 5),
            buildText5(),
            SizedBox(height: 10),
            buildApplyBtn(),
          ],
        ),
      ),
    );
  }
}
