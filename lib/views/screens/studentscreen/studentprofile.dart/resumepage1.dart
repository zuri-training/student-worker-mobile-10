import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studentworker/views/screens/studentscreen/studentprofile.dart/resumepage2.dart';

class ResumePage extends StatefulWidget {
  @override
  _ResumePageState createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  late SharedPreferences sp;

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((value) => sp = value);
  }

  void onChanged(key, value) => sp.setString(key, value);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffE5E5E5),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 70),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text(
                      'Create Your Resume',
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color(0xff1F135B),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    'Personal Details',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Color(0xff000000),
                    )),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'First name',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff000000),
                    )),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  MyTextField(
                      onChanged: (value) => onChanged("firstname", value),
                      hintText: 'Ayo',
                      keyboardType: TextInputType.name, 
                      //controller: firstnameCtrn,
                      ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Last name',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff000000),
                    )),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  MyTextField(
                      onChanged: (value) => onChanged("lastname", value),
                      hintText: 'David',
                      keyboardType: TextInputType.name),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Mobile number',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff000000),
                    )),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MyTextField(
                          onChanged: (value) => onChanged("countryCode", value),
                          readOnly: true,
                          hintText: '+234',
                           keyboardType: TextInputType.number, 
                          //  controller: ctyCodeCtrn,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        flex: 3,
                        child: MyTextField(
                            onChanged: (value) => onChanged("number", value),
                            hintText: '8074000011',
                            keyboardType: TextInputType.number),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Current State',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Color(0xff000000),
                                ))),
                            SizedBox(
                              height: 3,
                            ),
                            MyTextField(
                                onChanged: (value) =>
                                    onChanged("currentstate", value),
                                hintText: 'Lagos',
                                keyboardType: TextInputType.text,
                                 //controller: stateCtrn,
                                 ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 20.0,
                      ),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('City',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Color(0xff000000),
                                ))),
                            SizedBox(
                              height: 3.0,
                            ),
                            MyTextField(
                                onChanged: (value) => onChanged("city", value),
                                hintText: 'Apapa',
                                keyboardType: TextInputType.text, 
                                //controller: cityCtrn,
                                ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 74,
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResumePage2()));
                        },
                        child: Text(
                          "Next",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            letterSpacing: 2,
                            color: Color(0xffFFFFFF),
                          )),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF0A674F)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

// this widget holds all field properties for this form
class MyTextField extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  final void Function(String) onChanged;
  final bool readOnly;
  //final TextEditingController? controller;

  MyTextField({
    Key? key,
    this.hintText = '',
    this.keyboardType = TextInputType.text,
    required this.onChanged,
    this.readOnly = false,
  // required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      readOnly: readOnly,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black38, width: 2.0)),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 5.0)),
        hintText: hintText,
      ),
      keyboardType: TextInputType.text,
    );
  }
}
