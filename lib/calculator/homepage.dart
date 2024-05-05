import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage(this.result,{super.key});
  final int result;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Result"),
          backgroundColor: Colors.teal[400],
          centerTitle: true,
        ),
        body: Center(child: Text("Result = ${widget.result}",style: TextStyle(
          fontSize: 30,fontWeight: FontWeight.bold
        ),),),
      ),
    );
  }
}
