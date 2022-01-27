import 'package:flutter/material.dart';
import 'package:project_one/signup/orientation/horizontal_stack_signup.dart';
import 'package:project_one/signup/orientation/vertical_stack_signup.dart';


class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: orientation == Orientation.portrait ? VerticalStackSignup(size: size) : const HorizontalStackSignup(),
    );
  }
}



