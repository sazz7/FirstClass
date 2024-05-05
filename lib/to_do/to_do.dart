import 'package:flutter/material.dart';


class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  final List<String> _todoList = <String>[];
  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "To Do",
      home: Scaffold(
        backgroundColor: Colors.amberAccent[50],
        appBar: AppBar(
          title: Text("To Do"),
          centerTitle: true,
          backgroundColor: Colors.yellow,
        ),
        body: ListView(children: _getItems()),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _displayDialog(context),
          child: Icon(Icons.add),
          tooltip: "Add Item",
        ),
      ),
    );
  }

  void _addTodoItem(String title) {
    // Wrapping it inside a set state will notify
    // the app that the state has changed
    setState(() {
      _todoList.add(title);
    });
    _textFieldController.clear();
  }

  Widget _buildTodoItem(String title) {
    return ListTile(title: Row(
      //mainAxisAlignment: MainAxisAlignment.values[1],
      children: [
      Text(title),
      SizedBox(width: 50,),
      IconButton(
          onPressed: () {},
          icon: Icon(Icons.delete))
    ],));
  }

  Future<Future> _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Add a task to your list'),
            content: TextField(
              controller: _textFieldController,
              decoration: const InputDecoration(
                  hintText: 'Enter task here'
              ),
            ),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                SizedBox(width: 110,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      _addTodoItem(_textFieldController.text);
                    },
                    child: const Text('ADD'),
                  ),
                ),
                SizedBox(width: 110,
                  child: ElevatedButton(
                    child: const Text('CANCEL'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                )
              ],),
            ],
          );
        });
  }


  List<Widget> _getItems() {
    final List<Widget> _todoWidgets = <Widget>[];
    for (String title in _todoList) {
      _todoWidgets.add(_buildTodoItem(title));
      
    }
    return _todoWidgets;
  }
}

