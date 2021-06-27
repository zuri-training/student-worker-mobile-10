import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class JobMain extends StatefulWidget {
  @override
  _JobMainstate createState() {
    return _JobMainstate();
  }
}

class _JobMainstate extends State<JobMain> {
  Widget buildJob() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8.00),
      child: Text(
        'Find your next job',
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
      crossAxisAlignment: CrossAxisAlignment.start,
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
              hintText: 'Title/Keyword/Category',
              hintStyle: TextStyle(
                color: Colors.black38,
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
      padding: EdgeInsets.all(8.00),
      child: Text(
        'Explore our categories',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          //fontWeight: FontWeight.bold,
        ),
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
            children: <Widget> [
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget> [
            CircleAvatar(),
            Text(category),
          ],
        ),             
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[

              Container(
                //height: double.infinity,
                //width: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'StudentWorker',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      buildJob(),
                      //SizedBox(height: 1.0),
                      buildSearch(),
                      SizedBox(height: 30),
                      buildExplore(),
                      SizedBox(height: 10),
                      buildJobCategory(),
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
