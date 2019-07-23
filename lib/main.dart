// Flutter code sample for material.Card.1

// This sample shows creation of a [Card] widget that shows album information
// and two actions.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
    
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)
        
        ),
        body: MyStatelessWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    
    return Padding(
      
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: Colors.black,
        child: Container(
          margin: EdgeInsets.only(left: 10),
          color: Colors.teal[50],
          child: Column(
            
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
             
              ButtonTheme.bar(
                // make buttons use the appropriate styles for cards
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('Stop',style: TextStyle(color: Colors.black),),
                      onPressed: () {/* ... */},
                    
                    ),
                    FlatButton(
                      child: const Text('Play', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}