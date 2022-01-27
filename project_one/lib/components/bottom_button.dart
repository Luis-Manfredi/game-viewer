import 'package:flutter/material.dart';
import 'package:project_one/components/colors.dart';
import 'package:project_one/login/login.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Container(
        height: 80,
        width: size.width,
        alignment: Alignment.center,
        child: const Text('Get Started', style: TextStyle(color: indigo, fontSize: 20)),
        decoration: const BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(80),
            topRight: Radius.circular(80)
          )
        ),
      ),

      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
      },

      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        shadowColor: Colors.transparent,
        padding: const EdgeInsets.all(0),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        splashFactory: NoSplash.splashFactory
      ),
    );
  }
}