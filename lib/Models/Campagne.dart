class Campagne {
  int Id_campagne;
  int Annee;
  String Intitule;
  String Espece;

  Campagne(this.Id_campagne, this.Annee, this.Intitule, this.Espece);

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map['Id_Campagne'] = Id_campagne;
    map['Annee'] = Annee;
    map['Intitule'] = Intitule;
    map['Espece'] = Espece;
    return map;
  }

  Campagne.fromMap(dynamic obj) {
    Id_campagne = obj['Id_Campagne'];
    Annee = obj['Annee'];
    Intitule = obj['Intitule']; 
    Espece = obj['Espece'];
  }
}
