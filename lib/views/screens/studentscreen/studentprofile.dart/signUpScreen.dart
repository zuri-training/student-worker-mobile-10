import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studentworker/views/screens/studentscreen/studentprofile.dart/resumepage1.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenstate createState() {
    return _LoginScreenstate();
  }
}

class _LoginScreenstate extends State<LoginScreen> {
  bool isHiddenPassword = true;
  bool isRememberMe = false;

  Widget buildOr() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8.00),
      child: Text(
        '- or -',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Color(0xff000000),
            ),),
        ),
        SizedBox(height: 3),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
           // color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black26,
            //     blurRadius: 6,
            //     offset: Offset(0, 2),
            //   ),
            // ],
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              //border: InputBorder.none,
              focusedBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff757575), width: 2.0)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff757575), width: 5.0)),
              contentPadding: EdgeInsets.all(8.00),
              hintText: 'danielsilver12@gmail.com',
              hintStyle: TextStyle(
                color: Colors.black38,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Color(0xff000000),
            ),),
        ),
        SizedBox(height: 3),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            //color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black26,
            //     blurRadius: 6,
            //     offset: Offset(0, 2),
            //   ),
            // ],
          ),
          height: 60,
          child: TextField(
            obscureText: isHiddenPassword,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
             // border: InputBorder.none,
              focusedBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff757575), width: 2.0)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff757575), width: 5.0)),
              contentPadding: EdgeInsets.all(8.00),
              suffixIcon: InkWell(
                onTap: _togglePasswordView,
                child: Icon(
                  Icons.visibility,
                  color: Colors.black,
                ),
              ),
              hintText: 'Machine',
              hintStyle: TextStyle(
                color: Colors.black38,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPasswordMin() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(8.00),
      child: Text(
        'Minimum of 6 characters',
        style: TextStyle(
          color: Colors.black38,
        ),
      ),
    );
  }

  /*Widget buildForgotPassBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
          onPressed: () => print("Forgot Password Pressed"),
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }*/

  Widget buildRemMeCb() {
    return Container(
      height: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.black),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Colors.black,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  isRememberMe = value!;
                });
              },
            ),
          ),
          Text(
            'Remember me',
              style:GoogleFonts.roboto(
                  textStyle: TextStyle(fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff000000),
                  ) )
          )
        ],
      ),
    );
  }

  Widget buildTermsAndCondition() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top: 40.00),
      child: Text(
        'By Signing Up You Agree To Our Terms And Conditions',
          style:GoogleFonts.roboto(
              textStyle: TextStyle(fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff000000),
              ) )
      ),
    );
  }

  Widget buildSignUpButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        // style: ElevatedButton.styleFrom(
        //   primary: Colors.black,
        //   elevation: 8,
        // ),

        style: ButtonStyle(
          backgroundColor:
          MaterialStateProperty.all<Color>(Color(0xFF0A674F)),
        ),

        onPressed: () {

          Navigator.push(context,MaterialPageRoute(builder: (context) => ResumePage()));
        },
        child: Text(
          'Sign Up',
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Color(0xffF8F8F8),
            ),),
        ),
      ),
    );
  }

  Widget buildLogInBtn() {
    return GestureDetector(
      onTap: () =>  {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => LoginScreen()))
      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Already Have An Account? ',
                style:GoogleFonts.roboto(
                    textStyle: TextStyle(fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff000000),
                    ) )
            ),
            TextSpan(
                text: 'Login',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
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
                    children: <Widget>[
                      Text(
                        'Student Sign Up',
                          style:GoogleFonts.roboto(
                              textStyle: TextStyle(fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Color(0xff1F135B),
                              ) )
                      ),
                      SizedBox(height: 50),
                      buildOr(),
                      SizedBox(height: 20),
                      buildEmail(),
                      SizedBox(height: 20),
                      buildPassword(),
                      buildPasswordMin(),
                      buildRemMeCb(),
                      buildTermsAndCondition(),
                      buildSignUpButton(),
                      buildLogInBtn(),
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

  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
