import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/theme/app_fonts.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 117,
        height: 33,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: const LinearGradient(
                colors: [Color(0xff7EA3A1), Color(0xff87E4DC)])),
        child: Center(
          child: Text(
            "Sign In",
            style: AppFonts.s13w500.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
