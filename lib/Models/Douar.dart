class Douar {
  int Id_Douar;
  String Nom;
  Douar(this.Id_Douar, this.Nom);
  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map['Id_Douar'] = Id_Douar;
    map['Nom'] = Nom;
    return map;
  }

  Douar.fromMap(dynamic obj) {
    Id_Douar = obj['Id_Douar'];
    Nom = obj['Nom'];
  }
}
