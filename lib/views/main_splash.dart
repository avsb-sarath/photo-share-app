import 'package:flutter/material.dart';
import 'package:photo_share_app/utils/common.dart';
import 'package:photo_share_app/utils/const.dart';
import 'package:photo_share_app/utils/utils.dart';

class MainSplash extends StatefulWidget {
  const MainSplash({super.key});

  @override
  State<MainSplash> createState() => _MainSplashState();
}

class _MainSplashState extends State<MainSplash> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushNamedAndRemoveUntil(context, loginPage, (route) => false);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              appText(
                data: "Share your\nMoment",
                textSize: width(context) * 0.08,
                alignText: TextAlign.center,
              ),
              SizedBox(
                height: height(context) / 12,
              ),
              const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
