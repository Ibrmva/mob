import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/signInPages/auth_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Colors.black),
        debugShowCheckedModeBanner: false,
        home: const AuthPage(),
      ),
    );
  }
}
  // @override
  // Widget build(BuildContext context) {
  //   return const MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: AuthPage(),
  //   );
  // }
