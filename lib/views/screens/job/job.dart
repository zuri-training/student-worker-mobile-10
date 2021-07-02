import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studentworker/views/screens/job/jobDescriptionMain.dart';

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
      {this.icon = const Icon(Icons.location_on), this.label = '', labelStyle});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        Text(
          label,
          style: GoogleFonts.roboto(
              textStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: Color(0xff000000),
          )),
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
        Divider(),
        Text(job.title, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text(job.company),
        SizedBox(height: 15),
        Row(children: [
          IconLabel(
              icon: Icon(
                Icons.location_on,
                color: Color(0xff0A674F),
              ),
              label: job.location),
          SizedBox(width: 10),
          IconLabel(
              icon: Icon(Icons.radio_button_checked, color: Color(0xff0A674F)),
              label: 'Remote'),
        ]),
        SizedBox(height: 10),
        Row(
          children: [
            IconLabel(
                icon: Icon(Icons.money, color: Color(0xff0A674F)),
                label: '#${job.salary}/mo'),
            SizedBox(width: 10),
            IconLabel(
                icon: Icon(Icons.access_time, color: Color(0xff0A674F)),
                label: '${job.hoursPerWeek}hrs/week'),
          ],
        ),
        SizedBox(height: 20),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(height: 2, width: 50, color: Colors.black),
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
              )),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => JobDescriptionMain()));
              },
              child: Text(
                'View Details',
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: Color(0xff0A674F),
                )),
              ),
            ),
          ],
        )
      ],
    );
  }
}
