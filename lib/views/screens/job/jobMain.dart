import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studentworker/views/screens/job/jobSearchMain.dart';

import 'job.dart';

class JobMain extends StatefulWidget {
  @override
  _JobMainstate createState() {
    return _JobMainstate();
  }
}

class _JobMainstate extends State<JobMain> {
  bool showMore = false;

  int currentNavIndex = 0;

  Widget buildAppName() {
    return Text(
      'StudentWorker',
      style: GoogleFonts.roboto(
          textStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Color(0xffFFFFFF),
      )),
    );
  }

  Widget buildJob() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8.00),
      child: Text(
        'Find your next job',
        style: GoogleFonts.roboto(
            textStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 15,
          color: Color(0xffFFFFFF),
        )),
      ),
    );
  }

  Widget buildSearch() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            //color: Color(0xffE5E5E5),
            borderRadius: BorderRadius.circular(2),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black26,
            //     blurRadius: 6,
            //     offset: Offset(0, 2),
            //   ),
            // ],
          ),
          height: 30,
          child: TextField(
            keyboardType: TextInputType.text,
            style: GoogleFonts.roboto(
                textStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: Color(0xffE5E5E5),
            )),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                color: Color(0xff0A674F),
              )),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Color(0xff0A674F),
              )),
              contentPadding: EdgeInsets.all(10),
              suffixIcon: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff0A674F),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => JobSearchMain()));
                  },
                  child: Icon(Icons.search, color: Color(0xffF8F8F8))),
              hintText: 'Title/Keyword/Category',
              hintStyle: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildExplore() {
    return Container(
      alignment: Alignment.centerLeft,
      // padding: EdgeInsets.all(8.00),
      child: Text(
        'Explore our categories',
        style: GoogleFonts.roboto(
            textStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: Color(0xff1F135B),
        )),
      ),
    );
  }

  Widget buildJobCategory() {
    return Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              jobCategory('Retail'),
              jobCategory('Marketing'),
              jobCategory('Catering'),
              jobCategory('Careers'),
            ],
          ),
        ),
      ),
    );
  }

  Widget jobCategory(String category) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Card(
        color: Color(0xff341F97),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Color(0xffE5E5E5),
                child: Image.asset('assets/retail.png'),
              ),
              Text(
                category,
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Color(0xffFFFFF9),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildJobList() {
    List<JobModel> jobs =
        List<JobModel>.generate(showMore ? 10 : 3, (index) => JobModel());
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
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        toolbarHeight: 160,
        centerTitle: true,
        flexibleSpace: Image(
          image: AssetImage('assets/Rectangle 27.png'),
          fit: BoxFit.cover,
        ),
        title: Column(children: [
          buildAppName(),
          SizedBox(height: 10),
          buildJob(),
          buildSearch(),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onNavItemTap,
        currentIndex: currentNavIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.work_outline,
              color: Color(0xff10AC84),
            ),
            label: 'Jobs',
            // labelStyle: GoogleFonts.roboto(
            //     textStyle: TextStyle(
            //   fontWeight: FontWeight.w400,
            //   fontSize: 12,
            //   letterSpacing: 0.4,
            //   color: Color(0xff3D3D3D),
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
            //   color: Color(0xff000000),
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
            //   color: Color(0xff000000),
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
            //   color: Color(0xff000000),
            // )),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          // padding: EdgeInsets.symmetric(
          //   horizontal: 25,
          //   vertical: 120,
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 30),
              buildExplore(),
              SizedBox(height: 10),
              buildJobCategory(),
              SizedBox(),
              buildJobList(),
              TextButton(
                child: Text(
                  !showMore ? 'See more' : 'See less',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                onPressed: () {
                  setState(() {
                    showMore = !showMore;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
