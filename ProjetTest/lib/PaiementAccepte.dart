import 'package:ProjetTest/main.dart';
import 'package:flutter/material.dart';


class Paiement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projet Initation Dev Web'),
        automaticallyImplyLeading: false

      ),
      body: Center( 
          child : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Text
               (
                  'Paiement Accepté',
                  style: TextStyle
                  (
                    fontSize : 40.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton
                (
                  child: Text('Retour à l\'accueil'),
                  onPressed: () {
                    Navigator.push(
                    context, MaterialPageRoute(builder: (context) => FirstRoute()),
                    );
                  },
                ),              
              ],
            ),
        ),
    );
  }
}