import 'package:flutter/material.dart';

class IconMini extends StatelessWidget {
  const IconMini({ Key? key, required this.function, required this.icon }) : super(key: key);

  final VoidCallback function;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function, 
      child: icon,

      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(0),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        primary: Colors.transparent,
        shadowColor: Colors.transparent
      ),
    );
  }
}