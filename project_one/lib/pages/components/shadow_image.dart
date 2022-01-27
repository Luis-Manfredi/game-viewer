import 'package:flutter/material.dart';
import 'package:project_one/components/colors.dart';

class ShadowOnImage extends StatelessWidget {
  const ShadowOnImage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            Colors.transparent,
            Colors.black.withOpacity(0.8)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        )
      ),

      padding: const EdgeInsets.only(bottom: 20),
      child: Text(
        'Check it out!', 
        style: TextStyle(color: white, fontSize: 14, fontWeight: FontWeight.w500)
      ),
      alignment: Alignment.bottomCenter,
    );
  }
}