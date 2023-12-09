// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/feature/presentation/list.dart';
// import 'package:flutter_application_1/feature/presentation/widgets/all.dart';
// import 'package:flutter_application_1/feature/presentation/widgets/stack.dart';

// class BlockPage extends StatelessWidget {
//   const BlockPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: MyStack(
//           child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           blockColumn(),
//           const SizedBox(
//             width: 36,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(
//               top: 19,
//               bottom: 10
//             ),
//             child: AllBtn(text: "All",
//              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> const listPage()));},
//             )),
//           blockColumn()
//         ],
//       )),
//     );
//   }
// }

// Widget blockColumn() {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       container(),
//       const SizedBox(
//         height: 25,
//       ),
//       container(),
//     ],
//   );
// }

// Widget container(){
//   return Container(
//         width: 130,
//         height: 130,
//         decoration: BoxDecoration(
//           borderRadius:BorderRadius.circular(12), color: const Color.fromARGB(7, 56, 53, 53).withOpacity(0.39)),
//       );
// }