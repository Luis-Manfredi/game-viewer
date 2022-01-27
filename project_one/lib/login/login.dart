import 'package:flutter/material.dart';
import 'package:project_one/login/orientation/horizontal_stack_login.dart';
import 'package:project_one/login/orientation/vertical_stack_login.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: orientation == Orientation.portrait ? VerticalStackLogin(size: size) : const HorizontalStackLogin(),
    );
  }
}



