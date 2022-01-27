import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({ Key? key, required this.image, this.margin }) : super(key: key);

  final String image;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: 125,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 1,
            spreadRadius: 1,
            offset: const Offset(0, 2)
          )
        ],
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        )
      ),
    );
  }
}