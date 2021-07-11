import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:employee_app/screens/home/dashboard.dart';

class JobPosts extends StatefulWidget {


  // This widget is the root of your application.
  @override
  _JobPostsState createState() => _JobPostsState();
}

class _JobPostsState extends State<JobPosts> {
  int radioValue =0;
  int locationValue = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    radioValue = 0;
    locationValue = 0;
  }

  setradioValue(int val){
    setState(() {
      radioValue = val;
    });
  }

  setlocationValue(int val) {
    setState(() {
      locationValue = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //title: Text('Home'),
        leading: Padding(
          padding: EdgeInsets.only(
            left: 18.0,
            top: 12.0,
            bottom: 12.0,
            right: 12.0,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 19.0, vertical: 0.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12.0,),
              Center(
                child: Text("Job Posts",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
              ),
              Divider(thickness: 2.0,),
              SizedBox(height: 20.0,),
              Text('Type of Job',
              textAlign: TextAlign.start,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 10.0,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Job Title',
                ),
              ),
              SizedBox(height: 20.0,),
              Text("Category",
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold
              ),),
              Row(
                children: [
                  Radio(value: 1,
                      groupValue: radioValue,
                      onChanged: (value){
                    setradioValue(value);
                      },),
                  SizedBox(width:5.0 ,),
                  Text('Information technology'),
                ],
              ),
              Row(
                children: [
                  Radio(value: 2,
                    groupValue: radioValue,
                    onChanged: (value){
                    setradioValue(value);
                    },),
                  SizedBox(width:5.0 ,),
                  Text('Marketing'),
                ],
              ),
              Row(
                children: [
                  Radio(value: 3,
                    groupValue: radioValue,
                    onChanged: (value){
                    setradioValue(value);
                    },),
                  SizedBox(width:5.0 ,),
                  Text('Sales'),
                ],
              ),
              SizedBox(height: 12.0,),
              Text("Location",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold
                ),),
          Row(
            children: [
              Radio(value: 1,
                groupValue: locationValue,
                onChanged: (value){
                setlocationValue(value);
                },),
              SizedBox(width:5.0 ,),
              Text('on-ground'),
            ],
          ),
          Row(
            children: [
              Radio(value: 2,
                groupValue: locationValue,
                onChanged: (value){
                setlocationValue(value);
                },),
              SizedBox(width:5.0 ,),
              Text('Remote'),
            ],
          ),
              SizedBox(height: 12.0,),
              Text("Student Responsibility",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 10.0,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    gapPadding: 4.0
                  ),
                  labelText: 'Student Responsibility',
                ),
              ),
              SizedBox(height: 12.0,),
              Text("Salary(Fixed or Range)",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 10.0,),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 5.0),
                  ),
                  labelText: 'N20,000',
                ),
              ),
              SizedBox(height: 12.0,),
              Text("Hours per week",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 10.0,),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 5.0),
                  ),
                  labelText: '24',
                ),
              ),
              SizedBox(height: 12.0,),
              Text("Who Can apply? (Work duration and requirements)",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 10.0,),
              TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 5.0),
                  ),
                  labelText: 'Candidates Eligibility to Apply',
                ),
              ),
              SizedBox(height: 24.0,),
              Center(
                child: RaisedButton(onPressed: (){
                },
                child: Text('Next'),
                  disabledElevation: 0.0,
                ),
              ),
              SizedBox(height: 12.0,),
            ],
          ),
        ),
      ),
    );
  }
}
