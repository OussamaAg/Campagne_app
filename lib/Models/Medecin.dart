class Medecin {
  late String Prenom;
  late String CIN;
  late String AdressePro;
  late String Nom;
  late String Telephone;
  late String GSM;
  late String Autorisation;
  late String MandatSan;
  late String DecisionAttr;
  late String CartePro;
  late String TaxePro;
  late String ICE;
  late String IF;
  late String CNSS;
  late String RIB;
  late String Banque;
  late String Agence;
  late String Ville;
  late String Email;
  late String Username;
  late String Password;

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
    var map = <String, dynamic>{
      'Nom': Nom,
      'Prenom': Prenom,
      'AdressePro': AdressePro,
      'Telephone': Telephone,
      'GSM': GSM,
      'CIN': CIN,
      'Autorisation': Autorisation,
      'MandatSan': MandatSan,
      'DecisionAttr': DecisionAttr,
      'TaxePro': TaxePro,
      'CartePro': CartePro,
      'ICE': ICE,
      'IF': IF,
      'CNSS': CNSS,
      'RIB': RIB,
      'Banque': Banque,
      'Agence': Agence,
      'Ville': Ville,
      'Email': Email,
      'Username': Username,
      'Password': Password
    };
    return map;
  }

  Medecin.fromMap(Map<String, dynamic> map) {
    Nom = map['Nom'];
    Prenom = map['Prenom'];
    AdressePro = map['AdressePro'];
    Telephone = map['Telephone'];
    GSM = map['GSM'];
    CIN = map['CIN'];
    Autorisation = map['Autorisation'];
    MandatSan = map['MandatSan'];
    DecisionAttr = map['DecisionAttr'];
    TaxePro = map['TaxePro'];
    CartePro = map['CartePro'];
    ICE = map['ICE'];
    IF = map['IF'];
    CNSS = map['CNSS'];
    RIB = map['RIB'];
    Banque = map['Banque'];
    Agence = map['Agence'];
    Ville = map['Ville'];
    Email = map['Email'];
    Username = map['Username'];
    Password = map['Password'];
  }
}
