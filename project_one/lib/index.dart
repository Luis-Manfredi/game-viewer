import 'package:flutter/material.dart';
import 'package:project_one/components/colors.dart';
import 'package:project_one/components/horizontal_stack.dart';
import 'package:project_one/components/vertical_stack.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    String slogan = 'Watch reviews, news and more about video games.';
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          decoration: const BoxDecoration(
              gradient: RadialGradient(
            radius: 1,
            colors: [indigo, darkIndigo],
          )),
          child: orientation == Orientation.portrait ? VerticalStack(slogan: slogan, size: size) : 
          HorizontalStack(slogan: slogan, size: size),
        ),
      ),
    );
  }
}
