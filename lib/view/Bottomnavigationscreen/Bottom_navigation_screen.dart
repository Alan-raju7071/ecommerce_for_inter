import 'package:ecommerce_for_inter/view/Category/Categoryscreen.dart';
import 'package:ecommerce_for_inter/view/Homescreen/Homescreen.dart';
import 'package:ecommerce_for_inter/view/Savedscreen/Savedscreen.dart';
import 'package:ecommerce_for_inter/view/mycart/mycart.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int SelectedTab=0;
  List Screens=[
    Homescreen(),
    Categoryscreen(),
    Savedscreen(),
    Mycart()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[SelectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: SelectedTab,
        onTap: (value) {
          SelectedTab=value;
          setState(() {
            
          });
        },
        selectedItemColor:Colors.white ,
        backgroundColor: Colors.green,
        
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home" ),
           BottomNavigationBarItem(icon:Icon(Icons.category),label: "Category" ),
            BottomNavigationBarItem(icon:Icon(Icons.bookmark_outlined),label: "Saved" ),
             BottomNavigationBarItem(icon:Icon(Icons.shopping_bag),label: "MY Cart" ),

      ]),

    );
  }
}