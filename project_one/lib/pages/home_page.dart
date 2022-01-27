import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_one/pages/components/news_section.dart';
import 'package:project_one/pages/components/shadow_image.dart';
import 'package:project_one/pages/components/trending_section.dart';
import 'package:project_one/resources/network_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    bool isVisible = true;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: widget.size.width,
            height: 200,
            child: CarouselSlider.builder(
                itemCount: imagesList.length,
                itemBuilder: (context, index, realIndex) {
                  final image = imagesList[index];

                  return Stack(
                    children: [
                      Container(
                        height: widget.size.height,
                        width: widget.size.width,
                        child: Image.asset(
                          image, 
                          fit: BoxFit.cover, 
                        )
                      ),
                      Visibility(
                        visible: isVisible,
                        child: ShadowOnImage(size: widget.size)
                      )
                    ] 
                  );
                },
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                )),
          ),
          TrendingSection(size: widget.size),
          NewsSection(size: widget.size)
        ],
      ),
    );
  }
}

