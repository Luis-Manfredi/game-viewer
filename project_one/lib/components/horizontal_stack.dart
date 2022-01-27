import 'package:flutter/material.dart';
import 'package:project_one/components/bottom_button.dart';
import 'package:project_one/components/colors.dart';
import 'package:project_one/components/logo.dart';

class HorizontalStack extends StatelessWidget {
  const HorizontalStack({
    Key? key,
    required this.slogan,
    required this.size,
  }) : super(key: key);

  final String slogan;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
          top: 70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: const Logo()
              ),
                  
              Container(
                margin: const EdgeInsets.only(left: 70, top: 10, right: 70, bottom: 0),
                child: Text(slogan, style: const TextStyle(color: white, fontSize: 12), textAlign: TextAlign.center)
              )
            ],
          ),
        ),
    
        Positioned(
          bottom: 0,
          child: Container(
            height: 88,
            alignment: Alignment.bottomCenter,
            decoration: const BoxDecoration(
              color: lightIndigo,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(90),
                topRight: Radius.circular(90)
              )
            ),
            child: BottomButton(size: size)
          )  
        ),
      ],
    );
  }
}
