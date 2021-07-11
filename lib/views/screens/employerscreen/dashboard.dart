import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostJob extends StatefulWidget {
  const PostJob({Key key}) : super(key: key);

  @override
  _PostJobState createState() => _PostJobState();
}

class _PostJobState extends State<PostJob> {
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
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 19.0, vertical: 0.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12.0,),
              Center(
                child: Text("Post Job",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
              ),
              Divider(thickness: 2.0,),
              SizedBox(height: 20.0,),
              Text('Job Title',
                textAlign: TextAlign.start,
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 5.0,),
              Text('Company',
                textAlign: TextAlign.start,
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.normal
                ),),
              SizedBox(height: 20.0,),

              Row(
                children: [
                  Icon( Icons.location_on),
                  Text("Location"),
                  SizedBox(width: 10.0,),
                  Icon(Icons.circle),
                  //SizedBox(width:5.0 ,),
                  Text('Information technology'),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Icon(Icons.money),
                  SizedBox(width:3.0 ,),
                  Text('N 20,000/month'),
                  SizedBox(width: 5.0,),
                  Icon(Icons.timer),
                  SizedBox(width:3.0 ,),
                  Text('24hrs/week'),
                ],
              ),
              Divider(
                thickness: 2.0,
              ),
                  SizedBox(height: 5.0 ,),
                  Text('About Company',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold
                  ),),
              SizedBox(height: 5.0,),
              Text('Company is the fastest-growing authentic directory that takes pride in connecting buyers and sellers across Nigeria and beyond. Our online outlet provides you with an uninterrupted shopping experience'),

              SizedBox(height: 12.0,),
              Text("Responsibility of Student",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 5.0,),
              Text('1. Prepare and develop tools \n2. Lead the entire student team \n3. Utilize backend stuff \n4. Design and code electrothings'),
              SizedBox(height: 12.0,),
              Text("Who can Apply",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 5.0,),
              Text('Candidates who?'),
              SizedBox(height: 10.0,),
              Text("1. Are available for work for a duration of 3months \n2. Can start work between June 20 and June 23 2021 \n3. Have relevant skills and interests \n4. Can cook Stew",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.normal,

                ),),
              SizedBox(height: 10.0,),

              SizedBox(height: 24.0,),
              Center(
                child: RaisedButton(onPressed: (){
                  showDialog(context: context,
                     builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                        child: Container(
                          height: 100.0,
                          child: Padding(
                              padding: EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text("Congratulations, Your Job has been posted!",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold
                                ),),
                              ),
                              SizedBox(height: 10.0,),
                              Center(
                                child: RaisedButton(onPressed: (){},
                                child: Text('Create a new post'),
                                ),
                              ),
                            ],
                          ),),
                        ),
                    );
                     });
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
