import 'package:flutter/material.dart';
// import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_one/components/colors.dart';
import 'package:project_one/pages/components/icons_mini.dart';

class Collection extends StatefulWidget {
  const Collection({Key? key}) : super(key: key);

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  Map? jsonData;
  List? games;

  String myIp = '192.168.0.104';

  getCollection() async {
    http.Response response =
        // await http.get(Uri.parse('http://127.0.0.1:4000/api/games'));
        await http.get(Uri.parse('http://${myIp}:4000/api/games'));
    // debugPrint(response.body);

    jsonData = json.decode(response.body);

    setState(() {
      games = jsonData?['data'];
    });
  }

  @override
  void initState() {
    super.initState();
    getCollection();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return games == null ? Center(child: Text('Your collection is empty')) : ListView.builder(
        itemCount: games == null ? 0 : games?.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [lightIndigo, indigo],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              ),
              // color: white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 1,
                  spreadRadius: 1,
                  offset: const Offset(0, 1)
                )
              ]
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // child: Image.network(games?[index]['cover']),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(games?[index]['cover']),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                ),
                Container(
                  width: 170,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "${games?[index]['title']}", 
                          style: TextStyle(color: white, fontWeight: FontWeight.w500), 
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.fade,
                          maxLines: 2,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "${games?[index]['genre']}", 
                          style: TextStyle(color: white), 
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.fade,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconMini(function: (){}, icon: Icon(Icons.close, color: white)),
                      IconMini(function: (){}, icon: Icon(Icons.share_rounded, color: white)),
                      IconMini(function: (){}, icon: Icon(Icons.reviews, color: white)),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}

class Game {
  final String title, genre, cover;
  Game(this.title, this.genre, this.cover);
}
