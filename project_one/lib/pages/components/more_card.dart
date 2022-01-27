import 'package:flutter/material.dart';
import 'package:project_one/components/colors.dart';

class MoreCard extends StatelessWidget {
  const MoreCard({ Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: 125,
      margin: const EdgeInsets.only(left: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.more_rounded, size: 46, color: indigo),
          Text('Watch more', style: TextStyle(color: darkIndigo, fontSize: 12))
        ],
      ),
      decoration: BoxDecoration(
        color: white.withOpacity(0.9),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 1,
            spreadRadius: 1,
            offset: const Offset(0, 2)
          )
        ],
      ),
    );
  }
}