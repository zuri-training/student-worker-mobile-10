import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'job.dart';

class JobSearchMain extends StatefulWidget {
  @override
  _JobSearchMainstate createState() {
    return _JobSearchMainstate();
  }
}

class _JobSearchMainstate extends State<JobSearchMain> {
  bool showMore = false;

  int currentNavIndex = 0;

  Widget buildTkc() {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(8.00),
      child: Text(
        'Title/Keyword/Category',
        style: GoogleFonts.roboto(
            textStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Color(0xff000000),
        )),
      ),
    );
  }

  Widget buildSearch() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        TextFormField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Color(0xff000000),
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.all(10),
            suffixIcon: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff0A674F),
                ),
                onPressed: () {},
                child: Icon(Icons.search, color: Color(0xffF8F8F8))),
            hintText: 'Writer',
          ),
        ),
      ],
    );
  }

  Widget buildTotalJobCount() {
    return Row(
      children: [
        Text(
          '12,000 Jobs',
          textAlign: TextAlign.start,
          style: GoogleFonts.roboto(
              textStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xff000000),
          )),
        ),
        SizedBox(
          width: 50,
        ),
        Row(
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.filter_alt_outlined,
                color: Color(0xff1F135B),
              ),
              label: Text(
                'Filter',
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xff1F135B),
                )),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget buildJobList() {
    List<JobModel> jobs =
        List<JobModel>.generate(showMore ? 10 : 7, (index) => JobModel());
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
              color: Color(0xff1F135B),
            ),
            label: 'Jobs',
            // style: GoogleFonts.roboto(
            //     textStyle: TextStyle(
            //   fontWeight: FontWeight.w400,
            //   fontSize: 12,
            //   color: Color(0xff3D3D3D),
            // )),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined, color: Color(0xff1F135B)),
            label: 'Applications',
            // style: GoogleFonts.roboto(
            //     textStyle: TextStyle(
            //   fontWeight: FontWeight.w400,
            //   fontSize: 12,
            //   color: Color(0xff000000),
            // )),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy_outlined, color: Color(0xff1F135B)),
            label: 'Resume',
            // style: GoogleFonts.roboto(
            //     textStyle: TextStyle(
            //   fontWeight: FontWeight.w400,
            //   fontSize: 12,
            //   color: Color(0xff000000),
            // )),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin, color: Color(0xff1F135B)),
            label: 'Profile',
            // style: GoogleFonts.roboto(
            //     textStyle: TextStyle(
            //   fontWeight: FontWeight.w400,
            //   fontSize: 12,
            //   color: Color(0xff000000),
            // )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 120,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildTkc(),
            buildSearch(),
            SizedBox(height: 40),
            buildTotalJobCount(),
            //SizedBox(height: 20),
            buildJobList(),
          ],
        ),
      ),
    );
  }
}
