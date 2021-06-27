//
//
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:studentworker/views/screens/studentscreen/studentsignup.dart';
//
// import 'employerscreen/employersignup.dart';
//
// class Home extends StatefulWidget {
//
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// enum StudentWorkerProject{
//   student,
//   employer,
// }
//
// class _HomeState extends State<Home> {
//
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     StudentWorkerProject _selected = StudentWorkerProject.student;
//     return Scaffold(
//       backgroundColor: Color(0xffE5E5E5),
//       body: SafeArea(
//         child: Column(
//           children: <Widget>[
//             Center(
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 80, right: 0, left: 0, bottom: 0),
//                 child: Text('StudentWorker',
//                   textAlign: TextAlign.center,
//                   style: GoogleFonts.roboto(
//                     textStyle: TextStyle(fontWeight: FontWeight.w500,
//                       fontSize: 20, letterSpacing: 2,
//                       color: Color(0xff1F135B),
//                     ) ), ),
//               ),
//             ),
//             SizedBox(height: 10,),
//
//             Text('Who are you?',
//               textAlign: TextAlign.center,
//               style: GoogleFonts.roboto(
//                   textStyle: TextStyle(fontWeight: FontWeight.w400,
//                     fontSize: 16, letterSpacing: 2,
//                     color: Color(0xff000000),
//                   ) ),
//
//             ),
//             ListTile(
//               title: const Text('Student seeking part-time job'),
//               leading: Radio(
//                 value: StudentWorkerProject.student,
//                 groupValue: _selected,
//                 onChanged: (StudentWorkerProject value) {
//                   setState(() {
//                     _selected = value;
//                   });
//                 },
//               ),
//             ),
//             ListTile(
//               title: const Text('Employer'),
//               leading: Radio(
//                 value: StudentWorkerProject.employer,
//                 groupValue: _selected,
//                 onChanged: (StudentWorkerProject value) {
//                   setState(() {
//                     _selected = value;
//                   });
//                 },
//               ),
//             ),
//             TextButton(
//                 onPressed: (){if (_selected == StudentWorkerProject.student) {
//                   Navigator.pushAndRemoveUntil(
//                       context,
//                       MaterialPageRoute(builder: (context) => StudentSignup()),
//                           (route) => false);
//                 } else {
//                   Navigator.pushAndRemoveUntil(
//                       context,
//                       MaterialPageRoute(builder: (context) => EmployerSignup()),
//                           (route) => false);
//                 }}, child: Text('Continue'))
//           ],
//         ),
//       ),
//     );
//   }
// }
//
