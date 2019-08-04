import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Okreni kartice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Okreni kartice'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  bool _visible = true;


   @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: <Widget>[
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
                   AnimatedOpacity(
                     opacity: !_visible ? 1.0 : 0.0,
                     duration: Duration(milliseconds: 500),


                     child: Container(

                   width: 100,
                   height: 100,
                   color: Colors.green,
                 ),
               ),
               AnimatedOpacity(
                 opacity: _visible ? 1.0 : 0.0,
                 duration: Duration(milliseconds: 500),


                 child: Container(

                   width: 100,
                   height: 100,
                   color: Colors.red,
                 ),
               ),
               AnimatedOpacity(
                 opacity: !_visible ? 1.0 : 0.0,
                 duration: Duration(milliseconds: 500),


                 child: Container(

                   width: 100,
                   height: 100,
                   color: Colors.pink,
                 ),
               ),
             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               AnimatedOpacity(
                 opacity: _visible ? 1.0 : 0.0,
                 duration: Duration(milliseconds: 500),


                 child: Container(

                   width: 100,
                   height: 100,
                   color: Colors.orange,
                 ),
               ),
               AnimatedOpacity(
                 opacity: !_visible ? 1.0 : 0.0,
                 duration: Duration(milliseconds: 500),


                 child: Container(

                   width: 100,
                   height: 100,
                   color: Colors.blue,
                 ),
               ),
               AnimatedOpacity(
                 opacity: _visible ? 1.0 : 0.0,
                 duration: Duration(milliseconds: 500),


                 child: Container(

                   width: 100,
                   height: 100,
                   color: Colors.red,
                 ),
               ),

             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               AnimatedOpacity(
                 opacity: !_visible ? 1.0 : 0.0,
                 duration: Duration(milliseconds: 500),


                 child: Container(

                   width: 100,
                   height: 100,
                   color: Colors.amber,
                 ),
               ),
               AnimatedOpacity(
                 opacity: _visible ? 1.0 : 0.0,
                 duration: Duration(milliseconds: 500),


                 child: Container(

                   width: 100,
                   height: 100,
                   color: Colors.pinkAccent,
                 ),
               ),
               AnimatedOpacity(
                 opacity: !_visible ? 1.0 : 0.0,
                 duration: Duration(milliseconds: 500),


                 child: Container(

                   width: 100,
                   height: 100,
                   color: Colors.deepOrange,
                 ),
               ),




             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               AnimatedOpacity(
                 opacity: _visible ? 1.0 : 0.0,
                 duration: Duration(milliseconds: 500),


                 child: Container(

                   width: 100,
                   height: 100,
                   color: Colors.lightBlue,
                 ),
               ),
               AnimatedOpacity(
                 opacity: !_visible ? 1.0 : 0.0,
                 duration: Duration(milliseconds: 500),


                 child: Container(

                   width: 100,
                   height: 100,
                   color: Colors.lightGreenAccent,
                 ),
               ),
               AnimatedOpacity(
                 opacity: _visible ? 1.0 : 0.0,
                 duration: Duration(milliseconds: 500),


                 child: Container(

                   width: 100,
                   height: 100,
                   color: Colors.purple,
                 ),
               ),


             ],
           ),
         ],
       ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          pokreniAnimaciju();
        },
        tooltip: 'Toggle Opacity',
        child: Icon(Icons.flip),
      ),

    );
  }

    bool pokreniAnimaciju(){
      _visible = !_visible;
      setState(() {

      });
      return _visible;

    }


  }
