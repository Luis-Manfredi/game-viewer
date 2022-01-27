import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.size,
    required this.label,
    required this.color_1,
    required this.color_2,
    required this.function,
  }) : super(key: key);

  final Size size;
  final String label;
  final Color color_1;
  final Color color_2;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {

    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: ElevatedButton(
          child: Container(
            width: size.width,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(label, style: const TextStyle(fontSize: 16)),
                // Icon(Icons.chevron_right_rounded, color: white.withOpacity(1)),
                // Icon(Icons.chevron_right_rounded, color: white.withOpacity(1)),
                // Icon(Icons.chevron_right_rounded, color: white.withOpacity(1))
              ],
            ),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                gradient: LinearGradient(
                    colors: [color_1, color_2],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight)),
          ),
          onPressed: function,
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.transparent),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.all(0)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  )
              )
          ),
        )
    );
  }
}
