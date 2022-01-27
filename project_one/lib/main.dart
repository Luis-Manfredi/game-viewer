import 'package:flutter/material.dart';
import 'package:project_one/components/colors.dart';
import 'package:project_one/index.dart';

void main() { runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: indigo,
      theme: ThemeData(
        fontFamily: 'Montserrat'
      ),
      title: 'Project One',
      home: const Index(),
    );
  }
}
