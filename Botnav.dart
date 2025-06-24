import 'package:flutter/material.dart';
import 'package:project/dash.dart';
import 'package:project/home.dart';


class Botnavi extends StatefulWidget {
  const Botnavi({super.key});

  @override
  State<Botnavi> createState() => _BotnaviState();
}

class _BotnaviState extends State<Botnavi> {

  int _index =0;

  final screen = [
    Home(),
    Text("course"),
    Text("Washlist"),
    Text("account"),




  ];

  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_index],
      bottomNavigationBar:BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list,color: Colors.black,),label: "Course"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.black,),label: "WishList"),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),label: "Account"),


        ],
        currentIndex: _index,
        onTap: tap,
      ) ,
    );
  }
}
