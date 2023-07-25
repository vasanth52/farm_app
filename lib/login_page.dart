// ignore: unused_import
//import 'dart:ffi';

import 'package:farm_app/buyer_page.dart';
import 'package:farm_app/constant.dart';
import 'package:farm_app/registration_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

// ignore: camel_case_types
class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration:  const BoxDecoration(
          color: primaryColor,
        ),
        child:SingleChildScrollView(
          child: Padding(
            padding:  const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                const SizedBox(
                  height: 50,
                ),
                const Text("FARM",style:
                TextStyle(fontWeight:FontWeight.w400,fontFamily: "ROBO",
                fontSize:90 ),),
                const SizedBox(
                  height: 150,
                ),
                 const Padding(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  //getting user phone number
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor:fillColor1 ,
                    border: OutlineInputBorder(
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical:10),
                    labelText: "  Phone  Number"
                  ),
                ),
                ),
                 const SizedBox(
                  height: 20,
                ),
                  const Padding(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  //getting user password
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: fillColor1,
                    border: OutlineInputBorder(
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical:10),
                    labelText: "  Password"
                  ),
                ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  //add login
                  child: MaterialButton(
                  minWidth:double.infinity,
                  shape: const RoundedRectangleBorder(),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const buyer_page()));
                  },
                  // ignore: sort_child_properties_last
                  child: const Text("Log in",
                  style: TextStyle(color: Colors.white,fontSize: 20),),
                  color:  bluecolor,
                 )),
                 const SizedBox(
                  height: 50,
                 ),
                 const Row(
                  children: [
                    Expanded(child: Divider(color: Colors.black,thickness: 1.5,)),
                    Text("  OR  ",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                     Expanded(child: Divider(color: Colors.black,thickness: 1.5,))
                  ],
                 ),
                 const SizedBox(
                  height: 60,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children:  [
                       Text.rich(TextSpan(
                        text: "Don't have an account?",style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                        children:[
                          TextSpan(
                            text: "  Sign up",style: const TextStyle(color:bluecolor),
                            recognizer: TapGestureRecognizer()..onTap =() {
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>const registration_page()));
                            }
                          ),
                        ]
                      ),),
                    ],
                  )
              ],
            ),
          ),
        )
      ),
    );
  }
}