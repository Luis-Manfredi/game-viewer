import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_one/components/colors.dart';
import 'package:project_one/components/logo.dart';
import 'package:project_one/pages/home.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    });

    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: size.height,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          radius: 1,
          colors: [indigo, darkIndigo],
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 20), child: const Logo()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircularProgressIndicator(color: white),
                SizedBox(width: 20),
                Text('Please Wait...', style: TextStyle(color: white))
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
