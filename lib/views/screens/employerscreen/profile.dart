import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                child: Text("Profile",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
              ),
              SizedBox(height: 30.0,),
              TextField(
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                  labelText: 'Edit Email',
                ),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: 20.0,),

              TextField(
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                  labelText: 'Change Password',
                ),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: 20.0,),
              SizedBox(height: 20.0,),
              Text("Settings",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold
                ),),

              Divider(
                thickness: 2.0,
              ),
              SizedBox(height: 20.0,),
              SizedBox(height: 20.0,),
              Text("Help",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold
                ),),
              Divider(
                thickness: 2.0,
              ),
              SizedBox(height: 20.0,),
              SizedBox(height: 20.0,),
              Text("Logout",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold
                ),),
              Divider(thickness: 2.0,),
              SizedBox(height: 10.0,),
            ],
          ),
        ),
      ),
    );
  }
}
