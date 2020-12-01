import 'package:flutter/material.dart';
import 'profile.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MontantForm(),
          ]
        ),
      ),
    );
  }
}

// Create a Form widget.
class MontantForm extends StatefulWidget {
  @override
  MontantFormState createState() {

    return MontantFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MontantFormState extends State<MontantForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Entrez le montant souhaité',
            style: TextStyle(fontSize:20, fontWeight: FontWeight.bold),
          ),
          TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Entrez votre montant',
                hintStyle: TextStyle(height:2),
              ),
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value.isEmpty) {
                return 'Veuillez entrer un montant un montant';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Valider'),
            ),
          ),
        ],
      ),
    );
  }
}
/*
TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Entrez votre montant',
                labelText: 'Entrez votre montant'
              ),
              keyboardType: TextInputType.number,
            ),
*/