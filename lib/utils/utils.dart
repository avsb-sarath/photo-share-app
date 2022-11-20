import 'package:flutter/material.dart';

//height & width
height(context) => MediaQuery.of(context).size.height;
width(context) => MediaQuery.of(context).size.width;

// Global Keys
final signupFormKey = GlobalKey<FormState>();
final loginFormKey = GlobalKey<FormState>();
