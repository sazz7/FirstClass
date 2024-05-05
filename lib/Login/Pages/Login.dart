import 'package:first_class/Login/Pages/RegisterScreen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(children: [
            SizedBox(height: 20,),
            Center(
              child: Container(
                width: 100,
                height: 100,
                child: Icon(Icons.login,color: Colors.brown,size: 50),
              ),
            ),
            SizedBox(height: 25,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Log In",style: TextStyle(
                fontSize: 28,fontWeight: FontWeight.bold,color: Colors.brown,
              ),),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  hintText: "Enter phone number",
                  prefixIcon: Icon(Icons.phone,color: Colors.brown),
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock,color: Colors.brown,),
                  suffixIcon: Icon(Icons.add_call),
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: Text("Forgot Password ? ",style: TextStyle(
                fontSize: 16,color: Colors.brown,
              ),),
            ),
            SizedBox(height: 10),
            SizedBox(width: double.infinity,height: 40,
              child: ElevatedButton(
                onPressed: (){},
                child: Text("Log In",style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(width: double.infinity,height: 40,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                },
                child: Text("Don't have an account ? REGISTER",style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
              ),
            )
          ],),
        ),
      ),
    );
  }
}
