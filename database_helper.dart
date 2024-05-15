import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'teacher.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._instance();
  static Database? _database;

  DatabaseHelper._instance();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'teacher_reviews.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  void _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE teachers(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        review TEXT,
        rating REAL,
        textbookPath TEXT
      )
    ''');
  }

  Future<int> insertTeacher(Teacher teacher) async {
    Database db = await database;
    return await db.insert('teachers', teacher.toMap());
  }

  Future<List<Teacher>> getTeachers() async {
    Database db = await database;
    final List<Map<String, dynamic>> maps = await db.query('teachers');
    return List.generate(maps.length, (i) {
      return Teacher(
        id: maps[i]['id'],
        name: maps[i]['name'],
        review: maps[i]['review'],
        rating: maps[i]['rating'],
        textbookPath: maps[i]['textbookPath'],
      );
    });
  }
}