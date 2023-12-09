// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'package:flutter_application_1/feature/presentation/login_page.dart';
// import 'package:flutter_application_1/feature/presentation/widgets/stack.dart';

// void main() {
//   runApp(const listPage());
// }

// class listPage extends StatefulWidget {
//   const listPage({super.key});
//   @override
//   _listPageState createState() => _listPageState();
// }

// class _listPageState extends State<listPage> {
//   @override
//   void initState() {
//     super.initState();
//     routing();
//   }

//   void routing() {
//     Future.delayed(const Duration(seconds: 2), () {
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => const LoginPage()));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         body: MyStack(
//           child: Center(
//             child: Text(
//               ".kg",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 25,
//                 fontWeight: FontWeight.normal,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
