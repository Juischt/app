import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ToDo()));

class SingleToDo extends StatelessWidget {
  final String title;
  const SingleToDo(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
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
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Erste App',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: "Arial",
              color: Color.fromRGBO(0, 0, 0, 90),
            ),
          ),
          backgroundColor: Colors.black12,
        ),
        body:
        Column(
            children: <Widget>[
              ListView.builder(
                children: <Widget>[
                  Expanded(child: Image.network("https://blog.codecentric.de/files/2020/03/hackerschool_logo_400x400-1.png")),
                  Expanded(child: Image.network("https://blog.codecentric.de/files/2020/03/hackerschool_logo_400x400-1.png"), flex: 2),
                  Expanded(child: Image.network("https://blog.codecentric.de/files/2020/03/hackerschool_logo_400x400-1.png")),
                ],

              SingleToDo('hallo'),
              SingleToDo('test'),
              SingleToDo('Tomate'),
              SingleToDo('Buch'),
              ),
            ]
          ),
        ),
    );
  }
}


/*
Center(

              child:
              new Row(
                  children: <Widget>[
                    Expanded(child: Image.network("https://blog.codecentric.de/files/2020/03/hackerschool_logo_400x400-1.png")),
                    Expanded(child: Image.network("https://blog.codecentric.de/files/2020/03/hackerschool_logo_400x400-1.png"), flex: 2),
                    Expanded(child: Image.network("https://blog.codecentric.de/files/2020/03/hackerschool_logo_400x400-1.png")),
                  ],
              ),
      ),
child: Text(
              'Moin',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w900,
              ),
          ),

          padding: EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 100,
          ),

          decoration: BoxDecoration(
              color: Colors.purple,
              border: Border.all(
                color: Colors.black12,
                width: 5,
              )
          ),


          new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(width: 100, height: 100, color: Colors.cyanAccent),
                  Container(width: 150, height: 100, color: Colors.cyan),
                  Container(width: 250, height: 250, color: Colors.blue),
                  Container(width: 200, height: 100, color: Colors.blueAccent),
                ],

              ),*/