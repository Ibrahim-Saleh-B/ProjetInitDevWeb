import 'package:ProjetTest/main.dart';
import 'package:flutter/material.dart';


class Paiement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paiement accepté'),
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
              ],
            ),
        ),
    );
  }
}