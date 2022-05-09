import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart' as path;
class Database
{
  static Future<sql.Database> getDataBase() async
  {
    final Path = await sql.getDatabasesPath();
    return sql.openDatabase(path.join(Path, 'users.db'),
    onCreate: (db, version) {
      return db.execute('CREATE TABLE users(phone TEXT PRIMARY KEY, name TEXT, address TEXT, password TEXT)');
    }, version: 1);
  }

  static Future<void> signUp( String phone, String name, String address, String password) async
  {
    final database = await Database.getDataBase();
    database.insert('users',{'phone': phone, 'name': name, 'address': address, 'password': password} );
  }
  static Future<int> logIn() async
  {
    final database = await Database.getDataBase();
    List<Map> result = await database.query("users");
    result.forEach((row) => print(row));
    return 1;
  }




}
