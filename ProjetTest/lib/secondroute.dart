import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: SecondRoute(),
  ));
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Entrez votre montant',
                labelText: 'Entrez votre montant'
              ),
              keyboardType: TextInputType.number,
            ),
          ]
        ),
      ),
    );
  }
}