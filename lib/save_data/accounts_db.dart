import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'account.dart';

class DatabaseHelper {
  static const _databaseName = 'contacts.sqlite';
  static const _databaseVersion = 1;


  DatabaseHelper._();
  static final DatabaseHelper instance = DatabaseHelper._();

  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    Directory dataDirectory = await getApplicationDocumentsDirectory();
    String dbPath = join(dataDirectory.path, _databaseName);
    if (kDebugMode) {
      print(dbPath);
    }
    return await openDatabase(dbPath,
        version: _databaseVersion, onCreate: _onCreateDB);
  }

  Future _onCreateDB(Database db, int version) async {
    //create tables
    await db.execute('''
      CREATE TABLE ${Contact.tblContact}(
        ${Contact.colId} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${Contact.colEmail} TEXT NOT NULL,
        ${Contact.colFirstName} TEXT NOT NULL,
        ${Contact.colLastName} TEXT NOT NULL,
        ${Contact.colPassword} TEXT NOT NULL,
        ${Contact.colPhoneNumber} TEXT NOT NULL,
      )
      ''');
  }

  //contact - insert
  Future<int> insertContact(Contact contact) async {
    Database? db = await database;
    return await db!.insert(Contact.tblContact, contact.toMap());
  }
//contact - update
  Future<int> updateContact(Contact contact) async {
    Database? db = await database;
    return await db!.update(Contact.tblContact, contact.toMap(),
        where: '${Contact.colId}=?', whereArgs: [contact.id]);
  }
//contact - delete
  Future<int> deleteContact(int id) async {
    Database? db = await database;
    return await db!.delete(Contact.tblContact,
        where: '${Contact.colId}=?', whereArgs: [id]);
  }
//contact - retrieve all
  Future<List<Contact>> fetchContacts() async {
    Database? db = await database;
    List<Map> contacts = await db!.query(Contact.tblContact);
    return contacts.isEmpty
        ? []
        : contacts.map((x) => Contact.fromMap(x)).toList();
  }
}