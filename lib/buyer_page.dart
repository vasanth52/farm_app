import 'package:farm_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:outlined_text/outlined_text.dart';

// ignore: camel_case_types
class buyer_page extends StatefulWidget {
  const buyer_page({super.key});

  @override
  State<buyer_page> createState() => _buyer_pageState();
}

// ignore: camel_case_types
class _buyer_pageState extends State<buyer_page> {
  get items => [
    const Image(
      image:AssetImage("assets/images/Rectangle 6.png" ),),
       const Image(
      image:AssetImage("assets/images/Rectangle 7.png" ),),
       const Image(
      image:AssetImage("assets/images/Rectangle 8.png" ),),
       const Image(
      image:AssetImage("assets/images/Rectangle 9.png" ),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      toolbarHeight: 80,
      backgroundColor: primaryColor,
      automaticallyImplyLeading: false,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.only(top:18)),
          const Text("FARM",style:
                TextStyle(fontWeight:FontWeight.w400,fontFamily: "ROBO",
                fontSize:25 ,color: Colors.black),),
                 ListTile(
                  contentPadding: const EdgeInsets.only(left:0),
                  minLeadingWidth: 40,
                leading:  
                const Icon(Icons.dehaze_rounded,size:40,weight:100,color: Colors.black,),
                title: const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor:fillColor1 ,
                    border: OutlineInputBorder(
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical:10),
                    labelText: "  Search"
                  ),
                ),
                trailing:Container(
                  padding: const EdgeInsetsDirectional.only(top:10),
                  height: 40,
                  width: 70,
                  color: Colors.black,
                  child: const Padding(
                    padding: EdgeInsets.only(left:6),
                    child: Text("SELLER",style: TextStyle(
                      fontSize:16,fontWeight: FontWeight.w700,color: primaryColor
                    ),),
                  ),
                ),
                )
        ],
      ),
    ),
    body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: primaryColor
      ),
      
      padding: const EdgeInsets.all(18),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: 
          [const Text("Popular",style: TextStyle(
            fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black
          ),),
        
        CarouselSlider(
   items: items,
   options: CarouselOptions(
      height:192,
      aspectRatio: 16/9,
      viewportFraction:0.9,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 3),
      autoPlayAnimationDuration: const Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      enlargeFactor: 0.3,
      scrollDirection: Axis.horizontal,
   ),
 ),
   const Text("Top Seller",style: TextStyle(
    fontSize: 16,fontWeight: FontWeight.w700
   ),
   ),
      SingleChildScrollView(
        child: Row(
          children: [
           Container(
            padding: const EdgeInsets.only(left: 20),
            alignment: Alignment.bottomLeft,
            height: 88,
            width: 211,
            decoration:const BoxDecoration(
              image: DecorationImage(image:AssetImage("assets/images/Rectangle 14.png")),
            ) ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               OutlinedText(
              text: const Text('Farmer:VASANTH', 
              style: TextStyle(
              color: Colors.white, 
              fontSize:14,
              fontWeight: FontWeight.w700),
              ),
               strokes: [
          OutlinedTextStroke(
              color: Colors.black, 
              width:4
          ),],
              ),
              const Text("thiruvarur",style:TextStyle(
                fontSize: 14,fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 188, 233, 26)
      
              ),)
              ],
            ),
           ),
            Container(
            padding: const EdgeInsets.only(left: 20),
            alignment: Alignment.bottomLeft,
            height: 88,
            width: 211,
            decoration:const BoxDecoration(
              image: DecorationImage(image:AssetImage("assets/images/Rectangle 15.png")),
            ) ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               OutlinedText(
              text: const Text('Farmer:VIGNESH', 
              style: TextStyle(
              color: Colors.white, 
              fontSize:14,
              fontWeight: FontWeight.w700),
              ),
               strokes: [
          OutlinedTextStroke(
              color: Colors.black, 
              width:4
          ),],
              ),
              const Text("palani",style:TextStyle(
                fontSize: 14,fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 188, 233, 26)
      
              ),)
              ],
            ),
           ),
          ],
        ),
      ),
          ],
          ),
      ),),
    );
  }
}