import 'dart:convert';
import 'package:first_class/Login/Pages/Login.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}
class _RegisterState extends State<Register> {

  late TextEditingController _nameController;
  late TextEditingController _phoneController;
  late TextEditingController _passwordController;
  late TextEditingController _pinController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
    _pinController = TextEditingController();
  }
  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _pinController.dispose();
    super.dispose();
  }
  Future<void> _signUp() async {

    // URL
    const String apiUrl = 'https://matkaagold.com/api/signup';

    // Request
    final Map<String, dynamic> data = {
      'name': _nameController.text,
      'contact': _phoneController.text,
      'password': _passwordController.text,
      'pin': _pinController.text,
    };

    final response = await http.post(
      Uri.parse(apiUrl),
      body: data,
    );

    if (response.statusCode == 200) {
      // Parse the JSON response
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      final bool success = responseData['success'];
      final String message = responseData['message'];

      if (success) {
        // If sign-up is successful, extract user data
        final Map<String, dynamic> user = responseData['users'];
        final int id = user['id'];
        final String name = user['name'];
        final String contact = user['contact'];
        final String image = user['image'];

        // Show success Snackbar
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            backgroundColor: Colors.green,
          ),
        );

        // Handle successful sign-up
        print('Sign up successful');
        print('User ID: $id, Name: $name, Contact: $contact, Image: $image');
      } else {
        // Show error Snackbar
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            backgroundColor: Colors.red,
          ),
        );

        // Handle sign-up failure
        print('Sign up failed: $message');
      }
    } else {
      // Show network error Snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Network error: ${response.statusCode}'),
          backgroundColor: Colors.red,
        ),
      );

      // Handle network error
      print('Network error: ${response.statusCode}');
    }
  }

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
              child: Text("Register",style: TextStyle(
                fontSize: 28,fontWeight: FontWeight.bold,color: Colors.brown,
              ),),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: "Name",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                  hintText: "Enter phone number",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _passwordController,
              obscureText: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: Icon(Icons.add_call),
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _pinController,
              obscureText: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Enter 4 Digit PIN",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            SizedBox(width: double.infinity,height: 40,
              child: ElevatedButton(
                onPressed: (){},
                child: Text("Sign Up",style: TextStyle(color: Colors.white),),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text("Already Registered ? LOGIN",style: TextStyle(color: Colors.white),),
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
