import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/components/list_btn.dart';

class Hotels extends StatefulWidget {
  const Hotels({super.key});

  @override
  State<Hotels> createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  @override
  Widget build(BuildContext context) {
    return Placeholder();

    //   backgroundColor: Colors.black,
    //   endDrawer: SafeArea(
    //     child: Drawer(
    //       width: double.infinity,
    //       backgroundColor: Colors.black,
    //       child: Column(
    //         children: [
    //           Row(
    //             children: [
    //               IconButton(
    //                   onPressed: () {
    //                     Navigator.pop(context);
    //                   },
    //                   icon: const Icon(
    //                     Icons.close,
    //                     color: Colors.white,
    //                   ))
    //             ],
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 30),
    //             child: Column(
    //               children: [
    //                 ListBtn(onPressed: () {}, text: "High walk"),
    //                 const Divider(
    //                   color: Colors.white,
    //                 ),
    //                 ListBtn(
    //                     onPressed: () {
    //                       Navigator.push(
    //                           context,
    //                           MaterialPageRoute(
    //                               builder: (context) => const Hotels()));
    //                     },
    //                     text: "Flights"),
    //                 const Divider(
    //                   color: Colors.white,
    //                 ),
    //                 ListBtn(onPressed: () {}, text: "Hotels"),
    //               ],
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    //   appBar: AppBar(
    //     title: const Text(
    //       "Hello",
    //       style: TextStyle(
    //           color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
    //     ),
    //   ),
    //   body: Center(child: ),
    // );
  }
}
