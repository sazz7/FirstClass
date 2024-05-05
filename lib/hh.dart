import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  num result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculater Page'),
        elevation: 0,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: txt1,
                decoration: InputDecoration(
                    hintText: 'value1',
                    labelText: 'Enter your value1',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: txt2,
                decoration: InputDecoration(
                    hintText: 'Value2',
                    labelText: 'Enter your Value2',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          int value1 = int.tryParse(txt1.text) ?? 0;
                          int value2 = int.tryParse(txt2.text) ?? 0;
                          result = value1 + value2;
                        });
                      },
                      style: TextButton.styleFrom(
                        minimumSize: Size(20, 20),
                        maximumSize: Size(70, 50),
                        backgroundColor: Colors.blue,
                      ),
                      child: const Text('Pluse')),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          int value1 = int.tryParse(txt1.text) ?? 0;
                          int value2 = int.tryParse(txt2.text) ?? 0;
                          result = value1 - value2;
                        });
                      },
                      style: TextButton.styleFrom(
                          minimumSize: Size(20, 20),
                          maximumSize: Size(70, 50),
                          backgroundColor: Colors.green),
                      child: const Text('Minus')),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          int value1 = int.tryParse(txt1.text) ?? 0;
                          int value2 = int.tryParse(txt2.text) ?? 0;
                          result = value1 * value2;
                        });
                      },
                      style: TextButton.styleFrom(
                          minimumSize: Size(20, 20),
                          maximumSize: Size(80, 50),
                          backgroundColor: Colors.yellow),
                      child: Text('Multiple')),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          double value1 = double.tryParse(txt1.text) ?? 0;
                          double value2 = double.tryParse(txt2.text) ?? 0;
                          result = value1 / value2;
                        });
                      },
                      style: TextButton.styleFrom(
                          minimumSize: Size(20, 20),
                          maximumSize: Size(80, 50),
                          backgroundColor: Colors.red),
                      child: Text('Division')),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          int value1 = int.tryParse(txt1.text) ?? 0;
                          int value2 = int.tryParse(txt2.text) ?? 0;
                          result = (value1 * value1) +
                              (value2 * value2) +
                              2 * (value1 * value2);
                        });
                      },
                      style: TextButton.styleFrom(
                          minimumSize: Size(20, 20),
                          maximumSize: Size(80, 50),
                          backgroundColor: Colors.deepOrangeAccent),
                      child: const Text('(a+b)2')),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          int value1 = int.tryParse(txt1.text) ?? 0;
                          int value2 = int.tryParse(txt2.text) ?? 0;
                          result = (value1 * value1) +
                              (value2 * value2) +
                              2 * (value1 * value2);
                        });
                      },
                      style: TextButton.styleFrom(
                          minimumSize: Size(20, 20),
                          maximumSize: Size(80, 50),
                          backgroundColor: Colors.amberAccent),
                      child: const Text('Circle')),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          int value1 = int.tryParse(txt1.text) ?? 0;
                          int value2 = int.tryParse(txt2.text) ?? 0;
                          result = (value1 * value1) +
                              (value2 * value2) +
                              2 * (value1 * value2);
                        });
                      },
                      style: TextButton.styleFrom(
                          minimumSize: Size(20, 20),
                          maximumSize: Size(80, 50),
                          backgroundColor: Colors.lightGreen),
                      child: const Text('Triangle')),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          int value1 = int.tryParse(txt1.text) ?? 0;
                          int value2 = int.tryParse(txt2.text) ?? 0;
                          result = (value1 * value1) +
                              (value2 * value2) +
                              2 * (value1 * value2);
                        });
                      },
                      style: TextButton.styleFrom(
                          minimumSize: Size(20, 20),
                          maximumSize: Size(80, 50),
                          backgroundColor: Colors.deepPurple),
                      child: const Text('Cylinder',
                        style: TextStyle(
                          color: Colors.white,
                        ),)),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          int value1 = int.tryParse(txt1.text) ?? 0;
                          int value2 = int.tryParse(txt2.text) ?? 0;
                          result = (value1 * value1) +
                              (value2 * value2) +
                              2 * (value1 * value2);
                        });
                      },
                      style: TextButton.styleFrom(
                          minimumSize: Size(20, 20),
                          maximumSize: Size(80, 50),
                          backgroundColor: Colors.pinkAccent),
                      child: const Text('Square')),
                ],
              ),
              const SizedBox(height: 30),
              Center(
                  child: Text(
                    'Result: $result',
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  )),
              const SizedBox(height: 20),
              Center(
                child: TextButton(onPressed: (){
                  Navigator.pushNamed(context, 'sharedpref');
                },
                    style: TextButton.styleFrom(
                      maximumSize: Size(250, 50),
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text('Go to Next Page',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                      ),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}