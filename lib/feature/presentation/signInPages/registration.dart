import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/theme/app_fonts.dart';
import 'package:flutter_application_1/feature/presentation/components/text_field.dart';
import 'package:flutter_application_1/feature/presentation/components/colored_btn.dart';
import 'package:flutter_application_1/feature/presentation/components/stack.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_application_1/feature/presentation/page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MyStack(
        child: Stack(
          children: [
            Center(
              child: Container(
                  width: 301.w,
                  height: 550.h,
                  decoration: BoxDecoration(
                      color: const Color(0xffFFFEFE),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Center(
                          child: Text(
                            "Registration",
                            style: AppFonts.s18w700,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 11, bottom: 6),
                              child: Text(
                                "First name",
                                style: AppFonts.s12w700.copyWith(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                            TextData(controller: firstname, obscureText: false,),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 11, bottom: 6),
                              child: Text(
                                "Last name",
                                style: AppFonts.s12w700.copyWith(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                            TextData(controller: lastname, obscureText: false,),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 11, bottom: 6),
                              child: Text(
                                "email",
                                style: AppFonts.s12w700.copyWith(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                            TextData(controller: email, obscureText: false,),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 11, bottom: 6),
                              child: Text(
                                "password",
                                style: AppFonts.s12w700.copyWith(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                            TextData(controller: password, obscureText: false,),
                          ],
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 25,
                            ),
                            child: SignInBtn(
                              text: "Sign up",
                              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ListItemsPage()));},
                            )),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
