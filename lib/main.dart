import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:photo_share_app/utils/const.dart';
import 'package:photo_share_app/views/home_page.dart';
import 'package:photo_share_app/views/login_page.dart';
import 'package:photo_share_app/views/signup_page.dart';

import 'views/main_splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        mainSplash: (context) => MainSplash(),
        loginPage: (context) => LoginPage(),
        signupPage: (context) => SignupPage(),
        homePage: (context) => HomePage(),
      },
    ),
  );
}
