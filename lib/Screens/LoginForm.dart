import 'package:campagne_v2/Comm/genTextFormField.dart';
import 'package:campagne_v2/DatabaseHandler/DbHelper.dart';
import 'package:campagne_v2/Screens/Dashboard.dart';
import 'package:campagne_v2/Screens/SignupForm.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _conUserName = TextEditingController();
  final _conPassword = TextEditingController();
  final primaryColor = Color(0xFF151026);
  //login function
  final _formkey = new GlobalKey<FormState>();
  var dbHelper;

  @override
  void initState() {
    super.initState();
    dbHelper = DbHelper();
  }

//login function
  login() async {
    String Username = _conUserName.text;
    String Password = _conPassword.text;
    if (Username.isEmpty) {
      Toast.show("Veuillez entrer nom d\'utilisateur", context,
          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
    } else if (Password.isEmpty) {
      Toast.show("Veuillez entrer mot de passe", context,
          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
    } else {
      await dbHelper.getLoginMedecin(Username, Password);
      Navigator.pushAndRemoveUntil( 
          context,
          MaterialPageRoute(builder: (_) => Dashboard()),
          (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text(
            'Vetsoft ',
          ),
          centerTitle: true),
      body: Container(
          child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10.0),
              SizedBox(height: 30.0),
              Text(
                "Login",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30.0),
              ),
              SizedBox(height: 10.0),
              getTextFormField(
                controller: _conUserName,
                icon: Icons.person,
                hintname: "Nom d'utilisateur",
                isobscureText: false,
              ),
              SizedBox(height: 10.0),
              getTextFormField(
                controller: _conPassword,
                icon: Icons.lock,
                hintname: "Mot de passe",
                isobscureText: true,
              ),
              Container(
                  margin: EdgeInsets.all(20.0),
                  width: 500.0,
                  child: TextButton(
                    onPressed: login,
                    child: Text(
                      'Se connecter',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(30.0),
                  )),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Nouveau à cette application? ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 30.0),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: primaryColor),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupForm()),
                          );
                        },
                        child: Text(
                          'S\'inscrire',
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
