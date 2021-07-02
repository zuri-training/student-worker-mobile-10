import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobModel {
  String title, company, location, salary;
  int duration, numberOfApplicants, hoursPerWeek;

  JobModel({
    this.title = 'Job Title',
    this.company = 'Company',
    this.location = 'Location',
    this.duration = 10,
    this.numberOfApplicants = 12,
    this.hoursPerWeek = 24,
    this.salary = '20,000',
  });
}

class IconLabel extends StatelessWidget {
  final Widget icon;
  final String label;

  const IconLabel(
      {this.icon = const Icon(Icons.location_on),
      this.label = '',
      required TextStyle style});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        Text(
          label,
          // style: const TextStyle(
          //   fontWeight: FontWeight.bold,
          // ),
        ),
      ],
    );
  }
}

class JobWidget extends StatelessWidget {
  final JobModel job;
  const JobWidget(this.job);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          job.title,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color(0xff1F135B),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          job.company,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Color(0xff000000),
            ),
          ),
        ),
        SizedBox(height: 15),
        Row(children: [
          IconLabel(
              icon: Icon(
                Icons.location_on,
                color: Color(0xff0A674F),
              ),
              label: job.location,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Color(0xff000000),
                ),
              )),
          SizedBox(width: 10),
          IconLabel(
              icon: Icon(
                Icons.radio_button_checked,
                color: Color(0xff0A674F),
              ),
              label: 'Remote',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Color(0xff000000),
                ),
              )),
        ]),
        SizedBox(height: 10),
        Row(
          children: [
            IconLabel(
                icon: Icon(
                  Icons.money,
                  color: Color(0xff0A674F),
                ),
                label: '#${job.salary}/mo',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Color(0xff000000),
                  ),
                )),
            SizedBox(width: 10),
            IconLabel(
                icon: Icon(
                  Icons.access_time,
                  color: Color(0xff0A674F),
                ),
                label: '${job.hoursPerWeek}hrs/week',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Color(0xff000000),
                  ),
                )),
          ],
        ),
        SizedBox(height: 20),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(height: 2, width: 50, color: Color(0xff000000)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                '${job.duration} days ago - '
                '${job.numberOfApplicants} applicants',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xff000000),
                  ),
                )),
            TextButton(
              onPressed: () {},
              child: Text('',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xff000000),
                    ),
                  )),
            ),
          ],
        ),
        Divider(
          thickness: 1.00,
          color: Color(0xff66000000),
        ),
      ],
    );
  }
}
