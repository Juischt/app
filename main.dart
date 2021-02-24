import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ToDo()));

class SingleToDo extends StatelessWidget {
  final String title;
  const SingleToDo(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(

        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),

        decoration: BoxDecoration(
          color: Colors.black12,
          border: Border.all(
              color: Colors.black45,
              width: 2
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),

        padding: EdgeInsets.symmetric(
          horizontal: 22,
        ),

        child: ListTile(
          leading: Checkbox(value: true),
          title: Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                color: Colors.teal,
              )
          ),
          trailing: Icon(Icons.delete_forever_outlined),
        ),
    );
  }
}

class ToDo extends StatelessWidget {
  @override

  final List<String> ToDos = [
    'Tomate', 'Käse', 'Lauch', 'Paprika', 'Wein'
  ];

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          'ToDo Liste',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: "Arial",
            color: Color.fromRGBO(0, 0, 0, 90),
          ),
        ),
        backgroundColor: Colors.teal,
      ),


      body:
        ListView.builder(
          itemCount: ToDos.length,
          itemBuilder: (context, i){
              return SingleToDo(ToDos[i]);
          },

        )

    );
  }
}

