import 'package:flutter/material.dart';
import 'package:photo_share_app/utils/const.dart';
import 'package:photo_share_app/views/login_page.dart';

import 'views/main_splash.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        mainSplash: (context) => MainSplash(),
        loginPage: (context) => LoginPage(),
      },
    ),
  );
}
