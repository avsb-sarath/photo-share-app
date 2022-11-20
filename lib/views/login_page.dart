import 'package:flutter/material.dart';
import 'package:photo_share_app/utils/common.dart';
import 'package:photo_share_app/utils/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool loginPassVisibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Icon(
                Icons.switch_access_shortcut_add_rounded,
                size: width(context) * 0.3,
                color: Colors.blue,
              ),
            ),
            dataField(
              formFieldPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              textLabel: "Email",
              fieldBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            dataField(
              formFieldPadding: const EdgeInsets.symmetric(horizontal: 16),
              textLabel: "Passowrd",
              fieldTextLength: 8,
              textObscure: loginPassVisibility,
              fieldBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              fieldIconSuffix: IconButton(
                onPressed: () {
                  setState(() {
                    loginPassVisibility = !loginPassVisibility;
                  });
                },
                icon: Icon(loginPassVisibility
                    ? Icons.visibility
                    : Icons.visibility_off),
              ),
            ),
            appButton(
              buttonPadding: const EdgeInsets.symmetric(vertical: 16),
              buttonName: appText(data: "Login"),
              buttonFunction: () {},
            ),
            appButtonIcon(
              buttonName: appText(data: "Login with Facebook"),
              buttonIcon: const Icon(Icons.facebook),
              buttonFunction: () {},
            ),
          ],
        ),
      ),
    );
  }
}
