import 'package:flutter/material.dart';
void main(){
  runApp(new MyApp());
}
// creating simple material app in flutter

class MyApp extends StatelessWidget{
  @override
 Widget build(BuildContext context){
    return new MaterialApp(
      title: "home page",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.light,
        accentColor: Colors.blueGrey ,
      ),
    );
  }
}

//statefull widget demonstration
class HomePage extends StatefulWidget {
  //const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  String myStrng = "hello world";

  void _changeText(){
    setState(() {
      if(myStrng.startsWith("h")){
        myStrng = "welcome to the world of flutter";
      }
      else{
        myStrng = "hello world";
      }
    });

  }
  Widget _bodyWidget(){
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(myStrng,style: new TextStyle(
              color: Colors.blue,
              fontSize: 40.0,
            ),),


          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("home page"),

      ),
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add),
          onPressed: _changeText),
    );
  }
}

