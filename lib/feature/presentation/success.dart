// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/feature/presentation/blockpage.dart';
// import 'package:flutter_application_1/feature/presentation/widgets/okay.dart';
// import 'package:flutter_application_1/feature/presentation/widgets/stack.dart';
// import 'package:flutter_application_1/feature/presentation/theme/app_fonts.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class Successfully extends StatefulWidget {
//   const Successfully({super.key});

//   @override
//   State<Successfully> createState() => _SuccessfullyPageState();
// }

// class _SuccessfullyPageState extends State<Successfully> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body:MyStack(child: Stack(
//           children: [Center(
//             child: Container(
//                 width: 260.w,
//                 height: 140.h,
//                 decoration: BoxDecoration(
//                     color: const Color(0xffFFFEFE),
//                     borderRadius: BorderRadius.circular(12)),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 24,
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const SizedBox(
//                         height: 33,
//                       ),
//                       const Center(
//                         child: Text(
//                           "Successfully!",
//                           style: AppFonts.s18w700,
//                         ),
//                       ),
//                       Padding(
//                           padding: const EdgeInsets.only(
//                             top: 9,
//                             bottom: 10
//                           ),
//                           child: OkayBtn(text: "OK",
//                             onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => BlockPage()));},
//                           )),
//                       // OkayBtn(text: "OK", onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));}),
                      
//                     ],
//                   ),
//                 )),
//           ),],
//         ),),
        
//       );
//   }
// }
