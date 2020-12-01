import 'package:flutter/material.dart';
import 'PaiementAccepte.dart';

void main() => runApp(ImageContactLess());

class ImageContactLess extends StatelessWidget {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}