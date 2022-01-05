import 'dart:async';
import "package:campagne_v2/Models/Medecin.dart";
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io' as io;
import 'package:flutter/widgets.dart';

class DbHelper {
  static Database database;
  static const String DB_Name = 'campagne.db';
  static const String Table = 'Medecin';
  static const int Version = 1;

  //formFields
  static const String M_Nom = "Nom";
  static const String M_Prenom = "Prenom";
  static const String M_CIN = "CIN";
  static const String M_Adresse = "AdressePro";
  static const String M_Telephone = "Telephone";
  static const String M_GSM = "GSM";
  static const String M_Autorisation = "Autorisation";
  static const String M_Mandat = "MandatSan";
  static const String M_Decision = "DecisionAttr";
  static const String M_CartePro = "CartePro";
  static const String M_TaxePro = "TaxePro";
  static const String M_ICE = "ICE";
  static const String M_IF = "IF";
  static const String M_CNSS = "CNSS";
  static const String M_RIB = "RIB";
  static const String M_Banque = "Banque";
  static const String M_Agence = "Agence";
  static const String M_Ville = "Ville";
  static const String M_Email = "Email";
  static const String M_Username = "Username";
  static const String M_Password = "Password";

  DbHelper.ensureInitialized();

  //test if database exists
  Future<Database> get db async {
    if (database == null) {
      database = await initDb();
    }
    return db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_Name);
    var db = await openDatabase(path, version: Version, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int intVersion) async {
    await db.execute("""CREATE TABLE $Table(
        $M_CIN TEXT PRIMARY KEY,
        $M_Nom TEXT, 
        $M_Prenom TEXT,
        $M_Telephone TEXT,
        $M_GSM TEXT,
        $M_Email TEXT,
        $M_Username TEXT,
        $M_Password TEXT ,
        $M_Adresse TEXT,
        $M_Autorisation TEXT,
        $M_Decision TEXT,
        $M_Mandat TEXT,
        $M_CartePro TEXT,
        $M_TaxePro TEXT,
        $M_ICE TEXT,
        $M_IF TEXT,
        $M_CNSS TEXT,
        $M_RIB TEXT,
        $M_Banque TEXT,
        $M_Agence TEXT,
        $M_Ville TEXT,
        )""");
    ;
  }

  Future<int> saveMedecin(Medecin medecin) async {
    final db = await initDb();
    return db.insert(
      "Medecin", medecin.toMap(), //toMap() function from MemoModel
      conflictAlgorithm:
          ConflictAlgorithm.ignore, //ignores conflicts due to duplicate entries
    );
  }

  Future<Medecin> getLoginMedecin(String username, String password) async {
    final dbClient = await initDb();
    var res = await dbClient.rawQuery("SELECT * FROM $Table WHERE "
        "$M_Username='$username'AND "
        "$M_Password='$password'");
    //Test if the user exists
    if (res.length > 0) {
      return Medecin.fromMap(res.first);
    }
    return null;
  }
}
