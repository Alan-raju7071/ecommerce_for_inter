import 'package:ecommerce_for_inter/controller/Apicontroller/Apicontroller.dart';
import 'package:ecommerce_for_inter/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class Ontapscreen extends StatefulWidget {
  const Ontapscreen({super.key});

  @override
  State<Ontapscreen> createState() => _OntapscreenState();
}

class _OntapscreenState extends State<Ontapscreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<Apicontroller>().getApi();
      
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Apicontroller>(builder: (context, obbbj, child) => 
         Column(
          children: [ Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: [
                        Expanded(
                          child: Stack(
                            children: [ Container(
                             padding:EdgeInsets.all(20),
                              decoration: BoxDecoration(
                              
                              borderRadius: BorderRadius.circular(10),
                              //  image: DecorationImage(
                                //  fit: BoxFit.cover,
                                //  image: NetworkImage(obbbj.productlist!.image.toString()))
                              
                            ),
                            
                            ),
                            Positioned(
                              top: 20,
                              right: 20,
                              child: Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)
                                  
                                ),
                                child: Icon(Icons.bookmark_outline),
                              ),
                            )
                            ]
                          ),
                        ),
                        SizedBox(height: 10,),
                        // Text(objcontroller.productlist[index].price.toString()),
                        SizedBox(height: 10,),
                        // Text(objcontroller.productlist[index].title.toString()),
                        SizedBox(height: 10,),
                        
                        Row(
                          children: [
                            Spacer(),
                            InkWell(
                              onTap: () {
                                
                              },
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child:Icon(Icons.add) ),
                            ),
                          ],
                        ),
                        
                         
                    
                      ],
                    ),
                           
                           ),
        
          ],
        ),
      ),
    );
  }
}