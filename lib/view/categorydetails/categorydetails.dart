import 'package:ecommerce_for_inter/controller/Apicontroller/Apicontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class categorydetails extends StatefulWidget {
  const categorydetails({super.key});

  @override
  State<categorydetails> createState() => _categorydetailsState();
}

class _categorydetailsState extends State<categorydetails> {
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
      appBar: AppBar(
        title: Text("Ecommerce"),
        actions: [

          Icon(Icons.notifications),
        ],
      ),
      body: Consumer<Apicontroller>(builder: (context, objcontroller, child) => 
         Padding(
           padding: const EdgeInsets.all(10),
           child: Column(
            
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
              SizedBox(height: 30,),

               Expanded(
                 child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,
                 childAspectRatio: 0.6, 
                 mainAxisSpacing: 10),
                 itemCount: objcontroller.productlist.length,
                  itemBuilder: (context, index) => Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                      Expanded(
                        child: Stack(
                          children: [ InkWell(
                            onTap: () {
                              
                            },
                            child: Container(
                             padding:EdgeInsets.all(20),
                              decoration: BoxDecoration(
                              
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(objcontroller.productlist[index].image.toString()))
                              
                            ),
                            
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
                      Text(objcontroller.productlist[index].price.toString()),
                      SizedBox(height: 10,),
                      Text(objcontroller.productlist[index].title.toString()),
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
                         
                         ),),
               ),
             ],
           ),
         ),
      ),
    );
  }
}