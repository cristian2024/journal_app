import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBServices {
  Future<Database> open() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'journal_app.db');

    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        
      },
    );
  }
}
