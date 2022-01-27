import 'package:flutter/material.dart';
import 'package:project_one/components/colors.dart';
import 'package:project_one/components/textstyle_manager.dart';
import 'package:project_one/pages/components/item_card.dart';
import 'package:project_one/pages/components/more_card.dart';


class TrendingSection extends StatelessWidget {
  const TrendingSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [indigo, darkIndigo],
          begin: Alignment.bottomCenter,
          end: Alignment.topRight
        ),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 1,
            spreadRadius: 1,
            offset: const Offset(0, 1)
          )
        ]
      ),

      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: Text('Popular Games', style: titleSectionTextWhite)
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ItemCard(image: 'assets/images/apex_legends.jpg', margin: const EdgeInsets.only(top: 5, right: 5, bottom: 5)),
                ItemCard(image: 'assets/images/gtav.jpg', margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
                ItemCard(image: 'assets/images/warzone.jpg', margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
                ItemCard(image: 'assets/images/rocket_league.jpg', margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
                ItemCard(image: 'assets/images/minecraft.jpg', margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
                const MoreCard()
              ],
            ),
          ),
        ],
      ),
    );
  }
}