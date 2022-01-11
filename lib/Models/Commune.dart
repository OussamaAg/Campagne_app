import 'package:campagne_v2/Models/Campagne.dart';

class Commune {
  int Id_Commune;
  String Nom;
  Commune(this.Id_Commune, this.Nom);

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map['Id_Commune'] = Id_Commune;
    map['Nom'] = Nom;
    return map;
  }

  Commune.fromMap(dynamic obj) {
    Id_Commune = obj['Id_Commune'];
    Nom = obj['Nom'];
  }
}
