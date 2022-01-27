import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_one/components/colors.dart';
import 'package:project_one/components/custom_button.dart';
import 'package:project_one/signup/signup.dart';

class HorizontalStackLogin extends StatelessWidget {
  const HorizontalStackLogin({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [indigo, darkIndigo],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        )
      ),

      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 50),
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
            ),


            Container(
              alignment: Alignment.bottomCenter,
              height: size.height * 0.9,
              width: size.width,
              decoration: const BoxDecoration(
                color: lightIndigo,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(90),
                  topRight: Radius.circular(90)
                )
              ),

              child: Container(
                height: size.height * 0.85,
                padding: const EdgeInsets.only(left: 30, top: 30, right: 30, bottom: 30),
                decoration: const BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80)
                  )
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: size.width * 0.5,
                      child: Column(
                        children: [
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
                            label: 'LOGIN', 
                            color_1: indigo, 
                            color_2: darkIndigo, 
                            function: (){},
                          )             
                        ],
                      ),
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10, bottom: 10),
                              child: const Text('Login with', style: TextStyle(color: darkIndigo, fontSize: 16)),
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

                        
                        Container(
                          margin: const EdgeInsets.only(bottom: 5),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 5),
                                child: const Text('Don\'t have an account? ', style: TextStyle(color: darkIndigo))
                              ),
                              CustomButton(
                                size: size * 0.3, 
                                label: 'Sign Up', 
                                color_1: lightIndigo, 
                                color_2: indigo, 
                                function: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                                }
                              ),
                            ],
                          )
                        )

                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}