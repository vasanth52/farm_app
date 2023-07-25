import 'package:farm_app/constant.dart';
import 'package:flutter/material.dart';


// ignore: camel_case_types
class otp_page extends StatefulWidget {
  const otp_page({super.key});

  @override
  State<otp_page> createState() => _otp_pageState();
}

// ignore: camel_case_types
class _otp_pageState extends State<otp_page> {
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
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children:  [
                const SizedBox(
                  height: 70,
                ),
                const Text("FARM",style:
                TextStyle(fontWeight:FontWeight.w400,fontFamily: "ROBO",
                fontSize:40 ),),
                const SizedBox(
                  height: 140,
                ),
                 const Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Align(alignment: Alignment.centerLeft,child: Text("Enter OTP",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),),
              ),
              const SizedBox(
                height: 20,
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
                  height: 30,
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  //add login
                  child: MaterialButton(
                  minWidth:double.infinity,
                  shape: const RoundedRectangleBorder(),
                  onPressed: (){},
                  // ignore: sort_child_properties_last
                  child: const Text("Done",
                  style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.w500),),
                  color:  bluecolor,
                 )),
                 const SizedBox(
                  height: 30,
                 ),
                 Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  //add login
                  child: MaterialButton(
                  minWidth:double.infinity,
                  shape: const RoundedRectangleBorder(),
                  onPressed: (){},
                  // ignore: sort_child_properties_last
                  child: const Text("Resend",
                  style: TextStyle(color: Colors.black,fontSize:15,fontWeight: FontWeight.w500),),
                  color:  Colors.white,
                  ),),
                   const SizedBox(
                  height: 150,
                 ),
                    const Padding(padding: EdgeInsets.only(left: 100,right: 100),
                    child: Expanded(child: Divider(color: Colors.black,thickness: 1.5,))),
                  ],),)
      ),)
    );
  }
}