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
        child : Text(
          'Paiement Accepté',
          style: TextStyle(
              fontSize : 40.0,
              color: Colors.green,
              fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}