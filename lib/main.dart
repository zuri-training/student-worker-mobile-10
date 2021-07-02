import 'package:flutter/material.dart';
//import 'package:studentworker/views/screens/getstarted.dart';
import 'package:studentworker/views/screens/job/jobMain.dart';
// import 'package:studentworker/views/screens/homescreen.dart';
//import 'package:studentworker/views/screens/loadingscreen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Student worker',
        initialRoute: '/',
        routes: {
          // '/' : (context) => Loading(),
           //'/': (context) => WelcomeScreen(),
          '/': (context) => JobMain(),
        });
  }
}
