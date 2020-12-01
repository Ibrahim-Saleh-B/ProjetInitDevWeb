import 'package:ProjetTest/main.dart';
import 'package:flutter/material.dart';


class Paiement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Paiement accepté', 
                  style: TextStyle
                    (
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
      backgroundColor: Colors.black,
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
                RaisedButton(
                    child: Text('Appuyez pour revenir à l\'accueil', 
                        style: TextStyle
                        (
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                    ),
                    color : Colors.black,
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