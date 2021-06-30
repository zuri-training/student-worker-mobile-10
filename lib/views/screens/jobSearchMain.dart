import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'search.dart';

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
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildSearch() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(2),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 30,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(10),
              suffixIcon: Icon(
                Icons.search,
                color: Colors.black45,
              ),
              hintText: 'Writer',
              hintStyle: TextStyle(
                color: Colors.black38,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildJobs() {
    return Container(
      alignment: Alignment.centerLeft,
      //padding: EdgeInsets.all(8.00),
      child: Text(
        '12,000 Jobs',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
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
              icon: Icon(Icons.work_outline), label: 'Jobs'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: 'Applications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_copy_outlined), label: 'Resume'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: 'Profile'),
        ],
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView(
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
                      buildJobs(),
                      //SizedBox(height: 20),
                      buildJobList(),

                     /* TextButton(
                        child: Text(
                          !showMore ? '<>',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                        onPressed: () {
                          setState(() {
                            showMore = !showMore;
                          });
                        },
                      )*/
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
