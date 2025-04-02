import 'package:ecommerce_for_inter/view/categorydetails/categorydetails.dart';
import 'package:flutter/material.dart';

class Categoryscreen extends StatefulWidget {
  const Categoryscreen({super.key});

  @override
  State<Categoryscreen> createState() => _CategoryscreenState();
}

class _CategoryscreenState extends State<Categoryscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    label: Text("search for Category"),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black)
                      
                    ),
                    disabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black)
                      
                    ) ,
                    prefix: Icon(Icons.search)
                  ),
                ),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => categorydetails(),));
                  },
                  child: Container(
                    height: 81,
                    width: 161,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Center(child: Text(" MEDICAL EQUIPMENTS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                      ),)),
                  
                    ),
                  ),
                ),
                
                 InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => categorydetails(),));
                  },
                   child: Container(
                    height: 81,
                    width: 161,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Center(child: Text("MOBILITY AID",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                      ),)),
                   
                    ),
                                   ),
                 ),
            
              ],
            ),
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => categorydetails(),));
                  },
                  child: Container(
                    height: 81,
                    width: 161,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Center(child: Text("HOME HEALTHCARE",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                      ),)),
                  
                    ),
                  ),
                ),
                
                 InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => categorydetails(),));
                  },
                   child: Container(
                    height: 81,
                    width: 161,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Center(child: Text("RESPIRATORY CARE",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                      ),)),
                   
                    ),
                                   ),
                 ),
            
              ],
            ),
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => categorydetails(),));
                  },
                  child: Container(
                    height: 81,
                    width: 161,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Center(child: Text("SURGICAL SUPPLIES",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                      ),)),
                  
                    ),
                  ),
                ),
                
                 InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => categorydetails(),));
                  },
                   child: Container(
                    height: 81,
                    width: 161,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Center(child: Text("MOBILITY AID",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        
                        color: Colors.white
                      ),
                      )),
                   
                    ),
                                   ),
                 ),
            
              ],
            )
          ],
        ),
      ),
    );
  }
}