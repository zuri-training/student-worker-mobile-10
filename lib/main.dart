import 'package:flutter/material.dart';
import 'package:studentworker/views/screens/employerscreen/employersignup.dart';
import 'package:studentworker/views/screens/getstarted.dart';
import 'package:studentworker/views/screens/homescreen.dart';
// import 'package:studentworker/views/screens/homescreen.dart';
import 'package:studentworker/views/screens/loadingscreen.dart';
import 'package:studentworker/views/screens/studentscreen/signUpScreen.dart';


  void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Student worker',
        initialRoute: '/',
        routes: {
          '/' : (context) => Loading(),
          '/Welcome': (context) => WelcomeScreen(),
           '/Home': (context) => Home(),
          '/Student account': (context) => LoginScreen(),
          '/Employer account': (context) => EmployerSignupScreen(),


        }
    );
  }
}




