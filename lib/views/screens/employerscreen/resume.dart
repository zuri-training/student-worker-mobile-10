import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class resume extends StatelessWidget {
  const resume({Key key}) : super(key: key);

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
                child: Text("Resume",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
              ),
              Divider(thickness: 2.0,),
              SizedBox(height: 20.0,),
              Text('Ayo David',
                textAlign: TextAlign.start,
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 5.0,),
              Text('Apapa,lagos',
                textAlign: TextAlign.start,
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.normal
                ),),
              Divider(
                thickness: 2.0,
              ),
              SizedBox(height: 20.0 ,),
              Text('Education',
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                  color: Colors.grey
                ),),
              SizedBox(height: 5.0,),
              Text('Mechanical Engineering',
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.normal
                ),),
              SizedBox(height: 5.0,),
              Text('University of Lagos',
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.normal,
                    color: Colors.grey
                ),),
              SizedBox(height: 5.0,),
              Text('2019 - 2022',
              style: GoogleFonts.lato(
                  color: Colors.grey,
                fontWeight: FontWeight.bold
              ),),
              Divider(thickness: 2.0,),

              SizedBox(height: 20.0,),
              Text("Skills",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                ),),
              SizedBox(height: 5.0,),
              Text('1. Graphics Design \n2. Communication Skills \n3. Teamwork',
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold
              ),),
              Divider(thickness: 2.0,),
              SizedBox(height: 20.0,),
              Text("CONTACT",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 5.0,),
              Row(
                children: [
                  Text('Email:',
                  style: GoogleFonts.lato(),),
                  SizedBox(width: 3.0,),
                  Text('ayodavid@gmail.com',style: GoogleFonts.lato(),)
                ],
              ),
              SizedBox(height: 5.0,),
              Row(
                children: [
                  Text('Phone:',style: GoogleFonts.lato(),),
                  SizedBox(width: 3.0,),
                  Text('0903457862',style: GoogleFonts.lato(),)
                ],
              ),
              SizedBox(height: 10.0,),
              SizedBox(height: 10.0,),

              SizedBox(height: 24.0,),
              Center(
                child: RaisedButton(onPressed: (){},
                  child: Text('Select'),
                  disabledElevation: 0.0,
                ),
              ),
              SizedBox(height: 12.0,),
              Center(child: RichText(text: TextSpan(
                children: [
                  TextSpan(
                    text: "Reject Applicant",
                    style: GoogleFonts.lato(
                      color: Colors.blue,
                      decoration: TextDecoration.underline
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () async {
                      var url = "https://www.reject.com";
                      if(await canLaunch(url)){
                       await launch(url);
                      } else{
                        throw "Cannot Load Url";
                      }
                    }
                  )
                ]
              )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
