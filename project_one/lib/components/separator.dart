import 'package:flutter/material.dart';
import 'package:project_one/components/colors.dart';

class Separator extends StatelessWidget {
  const Separator({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      width: size.width,
      height: 1,
      color: lightIndigo.withOpacity(0.2),
    );
  }
}