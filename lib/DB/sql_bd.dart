import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Sqldb {
  static Database? _db;

  Future<Database?> get db async {
    if (_db == null) {
      _db = await initialDb();
      return _db;
    } else {
      return _db;
    }
  }

  Future<Database> initialDb() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'serie.db');
    Database mydb = await openDatabase(path,
        onCreate: _onCreate, version: 3, onUpgrade: _onUpgrade);
    return mydb;
  }

  void _onUpgrade(Database db, int oldVersion, int newVersion) {
    print("Database upgraded from $oldVersion to $newVersion");
  }

  void _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE "series"(
        "id" INTEGER NOT NULL PRIMARY KEY,
        "titel" TEXT NOT NULL,
        "resultat" TEXT NOT NULL,
        "nbstart" INTEGER NOT NULL
      )
    ''');
    print("Database and table created");
  }

  Future<int> insertData(String sql) async {
    Database? mydb = await db;
    try {
      int response = await mydb!.rawInsert(sql);
      return response;
    } catch (e) {
      print("Error inserting data: $e");
      return -1;
    }
  }

Future<List<Map<String, dynamic>>> readData(String sql) async {
  Database? mydb = await db;
  List<Map<String, dynamic>> response = await mydb!.rawQuery(sql);
  print("Query executed: $sql");
  print("Data fetched: $response");
  return response;
}
    Future<int> deleteAllRows(String tableName) async {
    Database? mydb = await db;
    int response = await mydb!.delete(tableName);
    return response;
  }

  Future<int> updateData(String sql) async {
    Database? mydb = await db;
    try {
      int response = await mydb!.rawUpdate(sql);
      return response;
    } catch (e) {
      print("Error updating data: $e");
      return -1;
    }
  }

  Future<int> deleteData(String sql) async {
    Database? mydb = await db;
    try {
      int response = await mydb!.rawDelete(sql);
      return response;
    } catch (e) {
      print("Error deleting data: $e");
      return -1;
    }
  }
}
