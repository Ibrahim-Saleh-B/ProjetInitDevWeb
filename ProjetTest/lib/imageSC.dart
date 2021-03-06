import 'package:flutter/material.dart';
import 'PaiementAccepte.dart';
import 'main.dart';

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
                          Future.delayed(Duration(seconds: 2), () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => FirstRoute()));
                          });
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