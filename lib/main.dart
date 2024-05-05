import 'package:first_class/Login/Pages/RegisterScreen.dart';
import 'package:first_class/calculator/cal.dart';
import 'package:first_class/fireBase/loginPage.dart';
import 'package:first_class/hh.dart';
import 'package:first_class/to_do/to_do.dart';
import 'package:first_class/web_view/web_view.dart';
import 'package:flutter/material.dart';

import 'dialog_box/alert_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginPage()
        // Container(
        //   child: Column(children: [
        //     SizedBox(height: 80,),
        //     Padding(
        //       padding: const EdgeInsets.all(10.0),
        //       child: TextField(
        //         decoration: InputDecoration(
        //           prefixIcon: Icon(Icons.email),
        //           hintText: "Email id",
        //           border: OutlineInputBorder()
        //         ),
        //       ),
        //     ),
        //     SizedBox(height: 20,),
        //     Padding(
        //       padding: const EdgeInsets.all(10.0),
        //       child: TextField(
        //         obscureText: true,
        //         decoration: InputDecoration(
        //           prefixIcon: Icon(Icons.key),
        //             hintText: "Password",
        //             border: OutlineInputBorder()
        //         ),
        //       ),
        //     ),
        //     SizedBox(height: 30,),
        //     SizedBox(
        //       height: 40,width: 300,
        //         child: ElevatedButton(
        //             onPressed: (){},
        //             child: Text("Login",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        //           style: ElevatedButton.styleFrom(
        //             backgroundColor: Colors.teal[400]
        //           )
        //         ))
        //   ],),
        // ),
      )
    );
  }
}
