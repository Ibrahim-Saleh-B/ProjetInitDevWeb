import 'package:flutter/material.dart';
import 'PaiementAccepte.dart';

void main() => runApp(Image());

class Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Projet Initation Dev Web'),
          automaticallyImplyLeading: true,
        ),
        body: IconButton(
            iconSize: 350.0,
            icon: Icon(
              Icons.contactless_outlined
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Paiement()),
              );
            },
          ),
      ),
    );
  }
}