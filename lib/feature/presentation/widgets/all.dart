import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/theme/app_fonts.dart';

class AllBtn extends StatefulWidget {
  final Function() onPressed;
  final String text;
  const AllBtn({super.key, required this.onPressed, required this.text});

  @override
  State<AllBtn> createState() => _AllBtnState();
}

class _AllBtnState extends State<AllBtn> {
  @override
  Widget build(BuildContext context){
    return Container(
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0, 
        ),
        child: Text(
          widget.text,
          style: AppFonts.s12w700.copyWith(color: Colors.white),
        )),
    );
  }
}