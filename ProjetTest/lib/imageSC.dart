import 'package:flutter/material.dart';
import 'PaiementAccepte.dart';

class ImageContactLess extends StatelessWidget {
  final String montant;

  ImageContactLess(this.montant);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projet Initation Dev Web'),
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 150),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Montant à régler : '+montant,style: TextStyle(fontFamily: 'Roboto',fontSize: 40,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
                        Icon(
                          Icons.euro,
                          size: 50.0,
                        ),
                      ]
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children : [
                      IconButton(
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
                      )
                    ]
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}