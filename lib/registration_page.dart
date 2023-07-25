import 'package:farm_app/otp_page.dart';
import 'package:flutter/material.dart';

import 'package:farm_app/constant.dart';

// ignore: camel_case_types
class registration_page extends StatefulWidget {
  const registration_page({super.key});

  @override
  State<registration_page> createState() => _registration_pageState();
}

// ignore: camel_case_types
class _registration_pageState extends State<registration_page> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,
        width: double.infinity,
        decoration:  const BoxDecoration(
          color: primaryColor,
        ),
         child: SingleChildScrollView(
               child: Padding(
                 padding: const EdgeInsets.only(left: 20,right: 20),
                 child: Column(
                   //mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                   children:  [
                const SizedBox(
                  height: 70,
                ),
                const Text("FARM",style:
                TextStyle(fontWeight:FontWeight.w400,fontFamily: "ROBO",
                fontSize:40 ),),
                const SizedBox(
                  height: 60,
                ),
              const Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Align(alignment: Alignment.centerLeft,child: Text("Name",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),),
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
                  ),
                ),
                ),
                 const SizedBox(
                  height: 10,
                ),
                 const Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Align(alignment: Alignment.centerLeft,child: Text("Phone Numbers",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),),
              ),
              const SizedBox(
                  height: 5,
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
                  ),
                ),
                ),
                const SizedBox(
                  height: 10,
                ),
                 const Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Align(alignment: Alignment.centerLeft,child: Text("Password",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),),
              ),
              const SizedBox(
                  height: 5,
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
                  ),
                ),
                ),
               const SizedBox(
                  height: 10,
                ),
                  const Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Align(alignment: Alignment.centerLeft,child: Text("Address",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),),
              ),
                const SizedBox(
                  height: 10,
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
                    contentPadding: EdgeInsets.symmetric(vertical:30),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const otp_page()));
                  },
                  // ignore: sort_child_properties_last
                  child: const Text("Get OTP",
                  style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.w500),),
                  color:  bluecolor,
                 )),
                 const SizedBox(
                  height: 50,
                 ),
                    const Padding(padding: EdgeInsets.only(left: 100,right: 100),
                    child: Expanded(child: Divider(color: Colors.black,thickness: 1.5,))),
              ],
                 ),
               ),
         ),
         )
    );
  }
}