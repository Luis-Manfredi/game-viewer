import 'package:flutter/material.dart';
import 'package:project_one/components/colors.dart';
import 'package:project_one/components/textstyle_manager.dart';
import 'package:project_one/pages/data/user_data.dart';
import 'package:project_one/index.dart';


class CustomMenu extends StatelessWidget {
  const CustomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.9,
      child: Drawer(
        elevation: 10,
        child: Row(
          children: [
            Container(
              height: size.height,
              width: size.width * 0.13,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [indigo, darkIndigo],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                )
              ),
              child: Container(
                alignment: Alignment.topCenter,
                margin: const EdgeInsets.only(top: 35),
                padding: const EdgeInsets.all(2),
                child: TextButton(
                  child: const Icon(Icons.close_rounded, color: white),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap
                  ),
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 40),
                height: size.height,
                width: size.width * 0.77,
                color: white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: const EdgeInsets.all(10),
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage: AssetImage(userAvatar)
                                )
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 40),
                                alignment: Alignment.centerLeft,
                                child: Wrap(
                                  children: [
                                    Text('Welcome ', style: menuTitleText),
                                    Text(user, style: menuTitleText, overflow: TextOverflow.ellipsis,)
                                  ],
                                )
                              ),
                            ],
                          ),

                          ElevatedButton(
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  const Icon(Icons.person, color: darkIndigo),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Text('Edit user', style: menuText)
                                  ),
                                ],
                              ),
                            ),

                            onPressed: (){},

                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                              padding: const EdgeInsets.all(0),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              minimumSize: Size.zero
                            ),
                          ),

                          ElevatedButton(
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  const Icon(Icons.help, color: darkIndigo),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Text('Help', style: menuText)
                                  ),
                                ],
                              ),
                            ),

                            onPressed: (){},

                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                              padding: const EdgeInsets.all(0),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              minimumSize: Size.zero
                            ),
                          ),

                          ElevatedButton(
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  const Icon(Icons.code_rounded, color: darkIndigo),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Text('Developers', style: menuText)
                                  ),
                                ],
                              ),
                            ),

                            onPressed: (){},

                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                              padding: const EdgeInsets.all(0),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              minimumSize: Size.zero
                            ),
                          ),

                        ],
                      ),
                    ),
                    TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Index()));
                        },
                        child: Row(
                          children: [
                            const Icon(Icons.logout, color: darkIndigo, size: 26,),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Text('Log out', style: menuText)
                            )
                          ],
                        )
                    )
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
