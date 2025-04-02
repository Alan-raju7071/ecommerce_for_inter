import 'package:ecommerce_for_inter/controller/Apicontroller/Apicontroller.dart';
import 'package:ecommerce_for_inter/view/Bottomnavigationscreen/Bottom_navigation_screen.dart';
import 'package:ecommerce_for_inter/view/Homescreen/Homescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Apicontroller(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNavigationScreen()
      
      ),
    );
  }
}
void main(){
  runApp(Myapp());
}