import 'package:flutter/material.dart';

class AlertDia extends StatefulWidget {
  const AlertDia({super.key});

  @override
  State<AlertDia> createState() => _AlertDiaState();
}

class _AlertDiaState extends State<AlertDia> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dialog",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dialog"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Column(children: [
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    showDialog(context: context,
                        builder: (BuildContext context){
                      return AlertDialog(
                        title: Text("Welcome"),
                        content: Text("This is Dialog Class"),
                        actions: [
                          TextButton(
                              onPressed: (){
                                Navigator.of(context).pop();
                              },
                              child: Text("CANCEL")
                          ),
                          TextButton(
                              onPressed: (){
                                Navigator.of(context).pop();
                              },
                              child: Text("ACCEPT")
                          )
                        ],
                      );
                        });
                  });
                },
                child: Text("Dialog")
            ),
            SizedBox(height: 30,),
            ElevatedButton(
                child: Text("Simple Dialog"),
                onPressed: (){
                  setState(() {
                    showDialog(context: context,
                        builder: (BuildContext context){
                          return SimpleDialog(
                            title: Text("List"),
                            children: [
                              SimpleDialogOption(
                                  onPressed: (){
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("Option 1")
                              ),
                              SimpleDialogOption(
                                  onPressed: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text("Option 2"))
                                    );
                                  },
                                  child: Text("Option 2")
                              ),
                              SimpleDialogOption(
                                  onPressed: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("Option 3 select"))
                                    );
                                  },
                                  child: Text("Option 3")
                              )
                            ],
                          );
                        });
                  });
                },
            )
          ],),
        ),
      ),
    );
  }
}
