import 'package:flutter/material.dart';

class Eleveur {
  String CIN;
  String Nom;
  String Prenom;
  int Nb_Ovins;
  int Nb_Caprins;
  Eleveur(this.CIN, this.Nom, this.Prenom, this.Nb_Ovins, this.Nb_Caprins);

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map['CIN'] = CIN;
    map['Nom'] = Nom;
    map['Prenom'] = Prenom;
    map['Nb_Caprins'] = Nb_Caprins;
    map['Nb_Ovins'] = Nb_Ovins;
  }

  Eleveur.fromMap(dynamic obj) {
    CIN = obj['CIN'];
    Nom = obj['Nom'];
    Prenom = obj['Prenom'];
    Nb_Ovins = obj['Nb_Ovins'];
    Nb_Caprins = obj['Nb_Caprins'];
  }
}
