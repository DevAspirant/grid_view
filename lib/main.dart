import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new Application(),
  ));
}

class Application extends StatefulWidget{
  @override
  _application createState() => new _application();
}

class _application extends State<Application>{

  List<int> _items = new List();

  @override

  void initState(){
    for(int i=0;i<10;i++){
      _items.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new GridView.builder(itemCount: _items.length,gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), itemBuilder: (BuildContext context,int index){
        return new Card(
          color: Colors.blue,
          child: new Padding(padding: const EdgeInsets.all(20.0),),
        );
      }),
    );
  }

}