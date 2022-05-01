import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart' as path;
class Database
{
  static Future<Future<sql.Database>> getDataBase() async
  {
    final Path = sql.getDatabasesPath();
    return sql.openDatabase(path.join(Path, 'users.db'),
    onCreate: ((db, version) {
      return db.execute('CREATE TABLE users(phone TEXT PRIMARY KEY, name TEXT, address TEXT, password TEXT)');
    }, version: 1);
    );
  }


}
