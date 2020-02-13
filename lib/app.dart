import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppStateKeeper();
  }
}

class AppStateKeeper extends State<App> {
  int myValue = 1;

  final barColor = const Color(0xFF26ae60);
  final bgColor = const Color(0xFFDAE0E2);
    final textColor = const Color(0xFFD63031);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body:Center(
          child:Text(
          '$myValue',
          textAlign: TextAlign.center,
           style: TextStyle(color: textColor,fontSize: 30,fontWeight:FontWeight.bold )
        
        ),) ,
        
        floatingActionButton: FloatingActionButton(
            backgroundColor: barColor,
            child: Icon(
              Icons.add,
              color: bgColor,
            ),
            onPressed: () {
              setState(() {
                myValue = myValue + 1;
              });
            }),
        backgroundColor: bgColor,
        appBar: AppBar(
          
          backgroundColor: barColor,
          title: Text('AnithaGKrishnegowda',textAlign:TextAlign.center,),
        ),
      ),
//home: Text('Hi There, Anitha from Mysore'),
    );
  }
}
