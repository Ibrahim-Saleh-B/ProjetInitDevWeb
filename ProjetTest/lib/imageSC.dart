import 'package:flutter/material.dart';
import 'PaiementAccepte.dart';

class ImageContactLess extends StatelessWidget {
  final String montant;

  ImageContactLess(this.montant);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Paiement', 
                  style: TextStyle
                    (
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
      backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Montant à régler : '+montant,style: TextStyle(fontFamily: 'Roboto',fontSize: 40,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
                        SizedBox(width:10),
                        Icon(
                          Icons.euro,
                          size: 50.0,
                        ),
                      ]
                  ),
                ),
                Container(
                  child: IconButton(
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}