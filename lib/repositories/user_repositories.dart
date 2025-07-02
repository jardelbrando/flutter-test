import '../database/database.dart';
import '../models/user.dart';
import 'package:sqflite/sqflite.dart';

class UserRepositories {
  static final DatabaseHelper instance = DatabaseHelper.instance;

  Future<void> insertUser(User user) async {
    Database db = await instance.db;
    await db.insert('users', user.toMap(user));
  }

  Future<List<Map<String, dynamic>>> queryAllUsers() async {
    Database db = await instance.db;
    return await db.query('users');
  }

  Future<int> updateUser(User user) async {
    Database db = await instance.db;
    return await db.update('users', user.toMap(user), where: 'id = ?', whereArgs: [user.id]);
  }

  Future<int> deleteUser(int id) async {
    Database db = await instance.db;
    return await db.delete('users', where: 'id = ?', whereArgs: [id]);
  }
}