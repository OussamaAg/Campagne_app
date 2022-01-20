import 'package:campagne_v2/Comm/genTextFormField.dart';
import 'package:campagne_v2/DatabaseHandler/DbHelper.dart';
import 'package:campagne_v2/Models/Medecin.dart';
import 'package:campagne_v2/Screens/LoginForm.dart';
import 'package:flutter/material.dart';

import 'package:toast/toast.dart';

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final primaryColor = Color(0xFF151026);
  final _formKey = new GlobalKey<FormState>();

  final _conNom = TextEditingController();
  final _conPrenom = TextEditingController();
  final _conCIN = TextEditingController();
  final _conAdresse = TextEditingController();
  final _conTelephone = TextEditingController();
  final _conCode = TextEditingController();
  final _conGSM = TextEditingController();
  final _conAutorisation = TextEditingController();
  final _conMandat = TextEditingController();
  final _conDecision = TextEditingController();
  final _conCartePro = TextEditingController();
  final _conTaxePro = TextEditingController();
  final _conICE = TextEditingController();
  final _conIF = TextEditingController();
  final _conCNSS = TextEditingController();
  final _conRIB = TextEditingController();
  final _conBanque = TextEditingController();
  final _conAgence = TextEditingController();
  final _conVille = TextEditingController();
  final _conEmail = TextEditingController();
  final _conUserName = TextEditingController();
  final _conPassword = TextEditingController();
  final _conCPassword = TextEditingController();
  var dbHelper;
  @override
  void initState() {
    super.initState();
    dbHelper = DbHelper.ensureInitialized();
  }

  //function to sign up the user
  SignUp() async {
    DbHelper dbHelper = new DbHelper.ensureInitialized();
    //getting all the values of textfields
    String Nom = _conNom.text;
    String Prenom = _conPrenom.text;
    String Adresse = _conAdresse.text;
    String Telephone = _conTelephone.text;
    String GSM = _conGSM.text;
    String CIN = _conCIN.text;
    String Autorisation = _conAutorisation.text;
    String Mandat = _conMandat.text;
    String Decision = _conDecision.text;
    String TaxePro = _conTaxePro.text;
    String CartePro = _conCartePro.text;
    String ICE = _conICE.text;
    String IF = _conIF.text;
    String CNSS = _conCNSS.text;
    String RIB = _conRIB.text;
    String Banque = _conBanque.text;
    String Agence = _conAgence.text;
    String Ville = _conVille.text;
    String Email = _conEmail.text;
    String Username = _conUserName.text;
    String Password = _conPassword.text;
    String ConfirmPass = _conCPassword.text;
    String Code_Zone = _conCode.text;

    if (_formKey.currentState.validate()) {
      if (Password != ConfirmPass) {
        print("hejjj");
        Toast.show("Password mismatch", context,
            duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
      } else {
        _formKey.currentState.save();

        Medecin medecin = Medecin(
            Nom,
            Prenom,
            Adresse,
            Telephone,
            GSM,
            CIN,
            Autorisation,
            Mandat,
            Decision,
            TaxePro,
            CartePro,
            ICE,
            IF,
            CNSS,
            RIB,
            Banque,
            Agence,
            Ville,
            Email,
            Username,
            Password,
            Code_Zone);

        await dbHelper.saveMedecin(medecin).then((MedecinData) {
          Toast.show("Medecin enregistré", context,
              duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => LoginForm()));
        }).catchError((error) {
          Toast.show("Erreur: medecin pas enregistré", context,
              duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('Vetsoft'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 5.0),
                    SizedBox(height: 1.0),
                    Text(
                      "Veuillez remplir le formulaire suivant ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black38,
                          fontSize: 30.0),
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conNom,
                      icon: Icons.account_box_rounded,
                      hintname: "Nom",
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conPrenom,
                      icon: Icons.account_box_rounded,
                      hintname: "Prenom",
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conCIN,
                      icon: Icons.account_box_rounded,
                      hintname: "CIN",
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conAdresse,
                      icon: Icons.house,
                      hintname: "Adresse professionnelle",
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conTelephone,
                      icon: Icons.phone_sharp,
                      hintname: "Telephone",
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conGSM,
                      icon: Icons.phone,
                      hintname: "GSM",
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conCode,
                      icon: Icons.code,
                      hintname: "Code Zone",
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conAutorisation,
                      icon: Icons.code,
                      hintname: "Autorisation de l\'exercice",
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conMandat,
                      icon: Icons.code,
                      hintname: "Mandat sanitaire",
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conDecision,
                      icon: Icons.code,
                      hintname: "Decision d\'attribution",
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conCartePro,
                      icon: Icons.account_balance_wallet_sharp,
                      hintname: "Carte professionnelle",
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conTaxePro,
                      icon: Icons.code,
                      hintname: "Taxe professionnelle",
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conICE,
                      icon: Icons.code,
                      hintname: "ICE",
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conIF,
                      icon: Icons.code,
                      hintname: "IF",
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conCNSS,
                      icon: Icons.code,
                      hintname: "CNSS",
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conRIB,
                      icon: Icons.code,
                      hintname: "RIB",
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conBanque,
                      icon: Icons.account_balance_outlined,
                      hintname: "Banque",
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conAgence,
                      icon: Icons.account_balance_outlined,
                      hintname: "Agence",
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conVille,
                      icon: Icons.location_city,
                      hintname: "Ville",
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conEmail,
                      icon: Icons.email,
                      hintname: "Email",
                      inputType: TextInputType.emailAddress,
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conUserName,
                      icon: Icons.email,
                      hintname: "Nom d\'utilisateur",
                      inputType: TextInputType.name,
                      isobscureText: false,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conPassword,
                      icon: Icons.lock,
                      hintname: "Mot de passe",
                      isobscureText: true,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conCPassword,
                      icon: Icons.lock,
                      hintname: "Confirmer mot de passe",
                      isobscureText: true,
                    ),
                    SizedBox(height: 10.0),
                    Container(
                        margin: EdgeInsets.all(20.0),
                        width: 500.0,
                        child: TextButton(
                          onPressed: SignUp,
                          child: Text(
                            'S\'inscrire',
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
                          Text('Vous avez un compte ? '),
                          FlatButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => LoginForm()),
                                    (Route<dynamic> route) => false);
                              },
                              child: Text(
                                'Se connecter',
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
