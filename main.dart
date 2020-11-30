import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Projet Initation Dev Web'),
        ),
        backgroundColor: Colors.yellow,
        body: Center( 
          child : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Ink.image( 
                    image: NetworkImage('https://media.comicbook.com/2020/05/demon-slayer-kimetsu-no-yaiba-zenitsu-1218904-1280x0.jpeg'),
                    fit: BoxFit.cover,
                    width: 120.0,
                    height: 120.0,
                ),
                RaisedButton(
                  onPressed: () {
                    print('t\'as cliqué');
                  },
                  child : Text('Exemple de Bouton'),
                  color : Colors.lightBlue,
                ),              
              ],
            ),
        ),
      ),
    );
  }
}