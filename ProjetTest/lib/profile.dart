import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title:Text('Profil', 
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
          children: [ Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage('https://i.pinimg.com/564x/5e/89/f3/5e89f36eeedb95184f2fd894a26ad430.jpg'),
                radius: 90.0,
              ),
              SizedBox(height: 20),
              Text('Abdelaziz El-Rharbi',style: TextStyle(fontFamily: 'Roboto',fontSize: 20, fontWeight: FontWeight.bold)),
              Text('CyberSecurity Student',style: TextStyle(fontFamily: 'Roboto',fontSize: 15, height: 2,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
              SizedBox(height: 40),
              Container(
                child: Row(
                    children: [
                      Icon(Icons.phone),
                      SizedBox(width:10),
                      Text('06 47 75 88 46',style: TextStyle(fontFamily: 'Roboto',fontSize: 12,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
              Container(
                child: Row(
                    children: [
                      Icon(Icons.mail),
                      SizedBox(width:10),
                      Text('abdelaziz.elrharbi@outlook.fr',style: TextStyle(fontFamily: 'Roboto',fontSize: 12,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold))
                    ]
                ),
              ),
              
            ],
          ),]
        ),
      ),
    );
  }
}