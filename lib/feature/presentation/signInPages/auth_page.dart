import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/feature/presentation/fav_page.dart';
import 'package:flutter_application_1/feature/presentation/hotels_info.dart';
import 'package:flutter_application_1/feature/presentation/page.dart';
import 'package:flutter_application_1/feature/presentation/signInPages/login_page.dart';
import 'package:flutter_application_1/feature/presentation/splash_screen.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const ListItemsPage();
          } else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
