import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'account.dart';

class DatabaseHelper {
  static const _databaseName = 'tableAccounts.sqlite';
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
      CREATE TABLE ${Account.tblAccount}(
        ${Account.colId} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${Account.colEmail} TEXT NOT NULL,
        ${Account.colFirstName} TEXT NOT NULL,
        ${Account.colLastName} TEXT NOT NULL,
        ${Account.colPassword} TEXT NOT NULL,
        ${Account.colPhoneNumber} TEXT NOT NULL,
      )
      ''');
  }

  //contact - insert
  Future<int> insertAccount(Account account) async {
    Database? db = await database;
    return await db!.insert(Account.tblAccount, account.toMap());
  }
//contact - update
  Future<int> updateAccount(Account account) async {
    Database? db = await database;
    return await db!.update(Account.tblAccount, account.toMap(),
        where: '${Account.colId}=?', whereArgs: [account.id]);
  }
//contact - delete
  Future<int> deleteAccount(int id) async {
    Database? db = await database;
    return await db!.delete(Account.tblAccount,
        where: '${Account.colId}=?', whereArgs: [id]);
  }
//contact - retrieve all
  Future<List<Account>> fetchAccounts() async {
    Database? db = await database;
    List<Map> accounts = await db!.query(Account.tblAccount);
    return accounts.isEmpty
        ? []
        : accounts.map((x) => Account.fromMap(x)).toList();
  }
}