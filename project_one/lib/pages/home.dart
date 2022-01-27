import 'package:flutter/material.dart';
import 'package:project_one/components/colors.dart';
import 'package:project_one/pages/collection_page.dart';
// import 'package:project_one/pages/components/custom_bottom_nav_bar.dart';
import 'package:project_one/pages/components/drawer.dart';
import 'package:project_one/pages/home_page.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  String _title = '';

  @override
  initState(){
    _title = 'Home';
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    final screens = [
      HomePage(size: size),
      Center(child: Text('Search')),
      Collection(),
      Center(child: Text('Reviews'))
    ];

    return Scaffold(
      backgroundColor: white,
      key: scaffoldKey,
      drawer: const CustomMenu(),
      appBar: AppBar(
        title: Text(_title, style: TextStyle(color: white)),
        leading: IconButton(
          icon: const Icon(Icons.menu_rounded),
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [indigo, darkIndigo],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight)),
        ),
      ),
      body: screens[currentIndex],

      bottomNavigationBar: CustomBottomNavBar(size),
    );
  }

  Container CustomBottomNavBar(Size size) {
    return Container(
      height: size.height * 0.08,
      width: size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [indigo, darkIndigo],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedItemColor: white,
        selectedFontSize: 12,
        unselectedItemColor: white,
        unselectedFontSize: 10,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'My Collection'),
          BottomNavigationBarItem(icon: Icon(Icons.reviews), label: 'Reviews'),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
     setState(() {
     currentIndex = index;
      switch(index) { 
       case 0: { _title = 'Home'; } 
       break; 
       case 1: { _title = 'Search'; } 
       break;
       case 2: { _title = 'My Collection'; } 
       break;
       case 3: { _title = 'Reviews'; } 
       break; 
      } 
     });
   }
}


