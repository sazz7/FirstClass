import 'package:first_class/fireBase/database.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        actions: [
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Database()));
            },
            child: Text("View")
          )
        ],
      ),
      body: Center(
        child: Column(children: [
          SizedBox(height: 50,),
          Image.asset('assets/images/login.png',width: 100),
          SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                hintText: 'Email',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear_rounded),
                    onPressed: _controller.clear,
                  ),
                border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              obscureText: true,
              controller: _controller,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.key),
                  hintText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear_rounded),
                    onPressed: _controller.clear,
                  ),
                  border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(height: 30,),
          SizedBox(width: 200,height: 45,
            child: ElevatedButton(
              onPressed: (){},
              child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
          )
        ],),
      ),
    );
  }
}
