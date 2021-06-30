import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        TextFormField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.black87,
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.all(10),
            suffixIcon: ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.search, color: Colors.white)),
            hintText: 'Writer',
            hintStyle: TextStyle(
              color: Colors.black38,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildTotalJobCount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '12,000 Jobs',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.filter_alt_outlined,
                color: Colors.black54,
                ),
              label: Text(
                'Filter',
                style: TextStyle(
                  color: Colors.black54,
                  ),
                
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
              icon: Icon(Icons.work_outline), label: 'Jobs'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: 'Applications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_copy_outlined), label: 'Resume'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: 'Profile'),
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
