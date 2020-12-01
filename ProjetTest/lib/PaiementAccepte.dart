import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navigation Basics',
    home: Paiement(),
  ));
}

class Paiement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projet Initation Dev Web'),
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