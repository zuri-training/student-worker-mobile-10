// //import 'package:employee_app/services/auth.dart';
// import 'package:flutter/material.dart';
//
// class SignIn extends StatefulWidget {
//   const SignIn({Key? key}) : super(key: key);
//
//   @override
//   _SignInState createState() => _SignInState();
// }
//
// class _SignInState extends State<SignIn> {
//
//   //final AuthService _auth = AuthService();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //backgroundColor:Colors.white ,
//         appBar: AppBar(
//           backgroundColor: Colors.blueAccent,
//           elevation: 0.0,
//           title: Text('Employer sign in'),
//           centerTitle: true,
//         ),
//         body: Builder(
//           builder: (context) => Stack(
//             fit: StackFit.expand,
//             children: [
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height,
//                 padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
//
//                 //child: RaisedButton(
//                 //child: Text('Sign in Anonymously'),
//                 /* onPressed: () async{
//           dynamic result = await _auth.signInAnon();
//           if (result == null){
//             print ('error signing in');
//           } else {
//             print('signed in');
//             print(result);
//           }
//           }*/
//               ),
//               Column(
//                 children: [
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(29.0),
//                     child: TextButton(
//                       padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
//                       color: Colors.white,
//                       child: Text('Login',
//                         style: TextStyle(color: Colors.blue),
//                       ),
//                       hoverColor: Colors.blueAccent, onPressed: () {  },
//                     ),
//                   )
//                 ],)
//
//             ],
//           ),)
//     );
//   }
// }
