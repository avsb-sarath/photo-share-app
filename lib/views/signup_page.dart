import 'package:flutter/material.dart';
import 'package:photo_share_app/utils/common.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    //Text Editing Controller
    final signupNameController = TextEditingController();
    final signupEmailController = TextEditingController();
    final signupPasswordController = TextEditingController();

    // Focus Node
    FocusNode signupNameFocus = FocusNode();
    FocusNode signupEmailFocus = FocusNode();
    FocusNode signupPasswordFocus = FocusNode();

    return Scaffold(
      appBar: AppBar(
        title: appText(data: "Signup to Share"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  dataField(
                    formFieldPadding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    textLabel: "Name",
                    fieldController: signupNameController,
                    fieldFocus: signupNameFocus,
                    fieldSubmited: () {
                      signupNameFocus.unfocus();
                      FocusScope.of(context).requestFocus(signupEmailFocus);
                    },
                  ),
                  dataField(
                    formFieldPadding:
                        const EdgeInsets.symmetric(horizontal: 16),
                    textLabel: "Email",
                    fieldController: signupEmailController,
                    fieldFocus: signupEmailFocus,
                    fieldKeybord: TextInputType.emailAddress,
                    fieldSubmited: () {
                      signupEmailFocus.unfocus();
                      FocusScope.of(context).requestFocus(signupPasswordFocus);
                    },
                  ),
                  dataField(
                    formFieldPadding:
                        const EdgeInsets.symmetric(horizontal: 16),
                    textLabel: "Password",
                    fieldController: signupPasswordController,
                    fieldTextLength: 8,
                    fieldFocus: signupPasswordFocus,
                    fieldSubmited: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: appButton(
                buttonName: appText(data: "Signup"),
                buttonFunction: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
