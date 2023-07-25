// ignore_for_file: camel_case_types, duplicate_ignore

import 'package:flutter/material.dart';



// ignore: camel_case_types
class rice_page extends StatefulWidget {
  const rice_page({super.key});

  @override
  State<rice_page> createState() => _rice_pageState();
}

class _rice_pageState extends State<rice_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      toolbarHeight: 164,
    flexibleSpace: Container(
    decoration: 
      const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Rectangle 20.png"),
          fit: BoxFit.cover,
        ),
      ),
  ),
  backgroundColor: Colors.transparent,
  leadingWidth: 40,
    leading: const Icon(Icons.arrow_back_ios,color: Colors.black,),
    title: const Text("RICE",style: TextStyle(
      color: Colors.black,fontSize: 20,fontWeight:FontWeight.w700
     ), 
     ),
     actions: const [
      Icon(Icons.shopping_cart_outlined,color: Colors.black,size: 30,)
     ],
      ),
      body:GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing:10 ,
      ),
    );
  }
}