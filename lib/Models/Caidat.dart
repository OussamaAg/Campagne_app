import 'package:flutter/cupertino.dart';

class Caidat {
  int Id_Caidat;
  String Nom;
  Caidat(this.Id_Caidat, this.Nom);
  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map['Id_Caidat'] = Id_Caidat;
    map['Nom'] = Nom;
    return map;
  }

  Caidat.fromMap(dynamic obj) {
    Id_Caidat = obj['Id_Caidat'];
    Nom = obj['Nom'];
  }
}
