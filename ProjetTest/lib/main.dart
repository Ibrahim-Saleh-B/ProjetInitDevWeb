import 'package:flutter/material.dart';
import 'secondroute.dart';
import 'profile.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title:Text('Projet Init Dev Web', 
                  style: TextStyle
                    (
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
      backgroundColor: Colors.black,
      automaticallyImplyLeading: false,
      actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.account_circle_outlined
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
          ),
        ],
      ),
      body:  
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text('Vous en rêviez, on l\'a fait.\nEncaissez depuis votre smartphone.\n PLUS DE TERMINALE DE PAIEMENT LES HMARS\n'),
              ] 
            )
          ),
          
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children : [
                Center(
                  child: RaisedButton(
                    child: Text('Cliquez là', 
                        style: TextStyle
                        (
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                    ),
                    color : Colors.black,
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
