import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_one/components/colors.dart';
import 'package:project_one/components/custom_button.dart';
import 'package:project_one/components/shapes/curve.dart';
import 'package:project_one/login/loading.dart';
import 'package:project_one/login/login.dart';

class VerticalStackSignup extends StatelessWidget {
  const VerticalStackSignup({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          child: Container(
            height: 300,
            width: size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 45),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [indigo, darkIndigo],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
    
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    children: [ 
                      Container(
                        margin: const EdgeInsets.only(bottom: 5),
                        child: SvgPicture.asset(
                          'assets/icons/controller.svg', 
                          height: 36, 
                          width: 36, 
                          color: smokeWhite
                        )
                      ),
    
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'GAME', 
                            style: TextStyle(
                              color: smokeWhite, 
                              fontSize: 26,
                              fontWeight: FontWeight.w300
                            )
                          ),
                          Text(
                            'VIEWER', 
                            style: TextStyle(
                              color: blue, 
                              fontSize: 26,
                              fontWeight: FontWeight.w500
                            )
                          )
                        ],
                      ),
                    ]
                  ),
                )
    
              ],
            ),
          )
        ),
    
        Positioned(
          bottom: 0,
          child: Container(
            alignment: Alignment.bottomCenter,
            height: size.height * 0.75,
            width: size.width,
            decoration: const BoxDecoration(
              color: lightIndigo,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(90),
                topRight: Radius.circular(90)
              )
            ),
    
            child: Container(
              height: size.height * 0.73,
              padding: const EdgeInsets.only(left: 30, top: 30, right: 30, bottom: 30),
              decoration: const BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                  topRight: Radius.circular(80)
                )
              ),
    
              child: Column(
                children: [

                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Insert an user name',
                        labelText: 'User',
                        labelStyle: TextStyle(color: darkIndigo),
                        alignLabelWithHint: true,
                        prefixIcon: Icon(Icons.person, color: lightIndigo),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: darkIndigo)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: lightIndigo)
                        )
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Insert an email',
                        labelText: 'Email',
                        labelStyle: TextStyle(color: darkIndigo),
                        alignLabelWithHint: true,
                        prefixIcon: Icon(Icons.mail_outline_rounded, color: lightIndigo),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: darkIndigo)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: lightIndigo)
                        )
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: darkIndigo),
                        hintText: 'Insert a password',
                        alignLabelWithHint: true,
                        prefixIcon: Icon(Icons.lock_outline_rounded, color: lightIndigo),
                        // suffixIcon: Icon(Icons.remove_red_eye_outlined, color: lightIndigo),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: darkIndigo)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: lightIndigo)
                        )
                      ),
                    ),
                  ),
    
                  CustomButton(
                    size: size, 
                    label: 'SIGN UP', 
                    color_1: indigo, 
                    color_2: darkIndigo,
                    function: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Loading()));
                    }
                  ),
    
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 5),
                    child: const Text('Sign up with', style: TextStyle(color: darkIndigo)),
                  ),
    
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          padding: const EdgeInsets.all(10),
                          child: const Icon(FontAwesomeIcons.twitter, color: blue),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: blue,
                              width: 1
                            )
                          ),
                        ),
                        
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          padding: const EdgeInsets.all(10),
                          child: const Icon(FontAwesomeIcons.facebookF, color: indigoAccent),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: indigoAccent,
                              width: 1
                            )
                          ),
                        ),
    
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          padding: const EdgeInsets.all(10),
                          child: const Icon(FontAwesomeIcons.instagram, color: Colors.deepOrange),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.deepOrange,
                              width: 1
                            )
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ) 
        ),
    
        Positioned(
          bottom: 0,
          child: ClipPath(
              clipper: MyCurve(),
              child: Container(
              height: 200,
              width: size.width,
              color: lightIndigo,
              padding: const EdgeInsets.only(bottom: 30),
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account? ', style: TextStyle(color: white)),
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    }, 
                    child: const Text('Login', style: TextStyle(color: darkIndigo)),
                    style: TextButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent,
                      padding: const EdgeInsets.all(0),
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap
                    ),
                  )
                ],
              ),
            ),
          )
        )
      ],
    );
  }
}