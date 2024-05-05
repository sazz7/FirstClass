//import 'package:first_class/calculator/homepage.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();
  var result = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
          backgroundColor: Colors.teal[400],
          centerTitle: true,
        ),
        body: Column(
          children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextFormField(
              controller: text1,
              decoration: InputDecoration(
                hintText: "value",
                labelText: "Enter the value",
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20)
                )
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextFormField(
              controller: text2,
              decoration: InputDecoration(
                  hintText: "value",
                  labelText: "Enter the value",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(20)
                  )
              ),
            ),
          ),
          SizedBox(height: 30,),
          Text("Result: $result",style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 20
          ),),
            SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            button(btext: "Add",
              callBack: (){
              setState(() {
                int value1 = int.tryParse(text1.text) ?? 0;
                int value2 = int.tryParse(text2.text) ?? 0;
                result = value1 + value2;
              });
            },),
            button(btext: "Sub",callBack: (){
              setState(() {
                int value1 = int.tryParse(text1.text) ?? 0;
                int value2 = int.tryParse(text2.text) ?? 0;
                result = value1 - value2;
              });
            },),
            button(btext: "Multiple",callBack: (){
              setState(() {
                int value1 = int.tryParse(text1.text) ?? 0;
                int value2 = int.tryParse(text2.text) ?? 0;
                result = value1 * value2;
              });
            },),
          ],),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            button(btext: "Division",callBack: (){
              setState(() {
                int value1 = int.tryParse(text1.text) ?? 0;
                int value2 = int.tryParse(text2.text) ?? 0;
                result = value1 / value2 as int;
              });
            },),
            button(btext: "(a+b)2",callBack: (){
              setState(() {
                int value1 = int.tryParse(text1.text) ?? 0;
                int value2 = int.tryParse(text2.text) ?? 0;
                result = (value1 * value1) +
                    (value2 * value2) +
                    2 * (value1 * value2);
              });
            },),
            button(btext: "Circle",callBack: (){
              setState(() {
                int value1 = int.tryParse(text1.text) ?? 0;
                int value2 = int.tryParse(text2.text) ?? 0;
                result = (value1 * value1) +
                    (value2 * value2) +
                    2 * (value1 * value2);
              });
            },),
          ],)
        ],),
      ),
    );
  }
}

class button extends StatelessWidget{

  final String btext;
  final Color? bColor;
  final VoidCallback? callBack;
  button({
    required this.btext,
    this.bColor = Colors.teal,
    this.callBack});

  @override
  Widget build(BuildContext context){
    return SizedBox(height: 40,width: 100,
      child: ElevatedButton(
          onPressed: (){callBack!();},
          child: Text(btext,style: TextStyle(
            color: Colors.black
          ),),
        style: ElevatedButton.styleFrom(
          backgroundColor: bColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero
          )
        ),
      ),
    );
  }
}

