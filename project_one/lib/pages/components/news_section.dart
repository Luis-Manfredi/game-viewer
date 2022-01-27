import 'package:flutter/material.dart';
import 'package:project_one/components/colors.dart';
import 'package:project_one/components/custom_button.dart';
import 'package:project_one/components/separator.dart';
import 'package:project_one/components/textstyle_manager.dart';

class NewsSection extends StatelessWidget {
  const NewsSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: size.width,
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: Text('News', style: titleSectionText)
          ),

          Container(
            width: size.width,
            height: 125,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment(0, -0.6),
                image: AssetImage('assets/images/it_takes_two.jpeg')
              ),
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('It Takes Two wins the Game Of The Year Award at The Game Awards!', style: subTitle)
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(itTakesTwoDescription, textAlign: TextAlign.justify)
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Text('Look at the reviews here!', style: subTitle)
                    ),
                    CustomButton(
                      size: size * 0.3, 
                      label: 'Reviews', 
                      color_1: lightIndigo, 
                      color_2: indigo, 
                      function: (){}
                    ),
                  ],
                )
              ],
            ),
          ),

          const Separator(),

           Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            width: size.width,
            height: 125,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment(0, 0),
                image: AssetImage('assets/images/ps_holiday.jpg')
              ),
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Great discounts at the Playstation Store!', style: subTitle)
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(psNetworkOffers, textAlign: TextAlign.justify)
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Text('Look at the offers here!', style: subTitle)
                    ),
                    CustomButton(
                      size: size * 0.3, 
                      label: 'Offers', 
                      color_1: lightIndigo, 
                      color_2: indigo, 
                      function: (){}
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}