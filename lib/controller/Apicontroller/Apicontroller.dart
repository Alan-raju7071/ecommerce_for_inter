import 'package:ecommerce_for_inter/models/Homemodel/Homemodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class Apicontroller with ChangeNotifier{
  List<Productmodel>productlist=[]; 
  bool isloading=false;
 Future<void> getApi() async {
  isloading=true;
  final url=Uri.parse("https://fakestoreapi.com/products");
  try{
    var response=await http.get(url);
    if(response.statusCode==200){
      productlist=ProductModelFromJson(response.body);
      

    }
  }
  catch(e){
    print(e);
  }
  isloading=false;
  notifyListeners();
 }
 
}