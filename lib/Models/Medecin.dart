class Medecin {
  String Prenom;
  String CIN;
  String AdressePro;
  String Nom;
  String Telephone;
  String GSM;
  String Autorisation;
  String MandatSan;
  String DecisionAttr;
  String CartePro;
  String TaxePro;
  String ICE;
  String IF;
  String CNSS;
  String RIB;
  String Banque;
  String Agence;
  String Ville;
  String Email;
  String Username;
  String Password;

  Medecin(
        this.Nom,
      this.Prenom,
      this.AdressePro,
      this.Telephone,
      this.GSM,
      this.CIN,
      this.Autorisation,
      this.MandatSan,
      this.DecisionAttr,
      this.TaxePro,
      this.CartePro,
      this.ICE,
      this.IF,
      this.CNSS,
      this.RIB,
      this.Banque,
      this.Agence,
      this.Ville,
      this.Email,
      this.Username,
      this.Password);

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map['Username'] = Username;
    map['Password'] = Password;
    map['Email'] = Email;
    map['Nom'] = Nom;
    map['Prenom'] = Username;
    map['AdressePro'] = AdressePro;
    map['CIN'] = CIN;
    map['Telephone'] = Telephone;
    map['GSM'] = GSM;
    map['Autorisation'] = Autorisation;
    map['MandatSan'] = MandatSan;
    map['DecisionAttr'] = DecisionAttr;
    map['CartePro'] = CartePro;
    map['TaxePro'] = TaxePro;
    map['ICE'] = ICE;
    map['IF'] = IF;
    map['CNSS'] = CNSS;
    map['RIB'] = RIB;
    map['Banque'] = Banque;
    map['Agence'] = Agence;
    map['Ville'] = Ville;
    return map;
  }

  Medecin.fromMap(dynamic obj) {
    Nom = obj['Nom'];
    Prenom = obj['Prenom'];
    AdressePro = obj['AdressePro'];
    Telephone = obj['Telephone'];
    GSM = obj['GSM'];
    CIN = obj['CIN'];
    Autorisation = obj['Autorisation'];
    MandatSan = obj['MandatSan'];
    DecisionAttr = obj['DecisionAttr'];
    TaxePro = obj['TaxePro'];
    CartePro = obj['CartePro'];
    ICE = obj['ICE'];
    IF = obj['IF'];
    CNSS = obj['CNSS'];
    RIB = obj['RIB'];
    Banque = obj['Banque'];
    Agence = obj['Agence'];
    Ville = obj['Ville'];
    Email = obj['Email'];
    Username = obj['Username'];
    Password = obj['Password'];
  }
}
