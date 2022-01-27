import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_one/components/colors.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 5),
          child: SvgPicture.asset(
            'assets/icons/controller.svg', 
            height: 56, 
            width: 56, 
            color: smokeWhite
          )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'GAME', 
              style: TextStyle(
                color: smokeWhite, 
                fontSize: 36,
                fontWeight: FontWeight.w300
              )
            ),
            Text(
              'VIEWER', 
              style: TextStyle(
                color: blue, 
                fontSize: 36,
                fontWeight: FontWeight.w500
              )
            ),
          ],
        ),
      ],
    );
  }
}