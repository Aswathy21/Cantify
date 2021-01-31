import 'dart:io';
import 'package:cantify/models/menu.dart';
import 'package:cantify/screens/user/profile.dart';
import 'package:cantify/models/user.dart';
import 'package:cantify/models/manager.dart';
import 'package:cantify/models/admin.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  static Database _db;
  final String tableUser = "User";
  final String tableAdmin = "Admin";
  final String tableManager = "Manager";
  final String tableMenu = "Menu";
  final String columnUserName = "username";
  final String columnPassword = "password";
  final String columnAUserName = "ausername";
  final String columnAPassword = "apassword";
  final String columnMUserName = "musername";
  final String columnMPassword = "mpassword";
  final String columnDishname = "dishname";
  final String columnRate = "rate";

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  DatabaseHelper.internal();

  initDb() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "project2.db");
    var ourDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return ourDb;
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE User(id INTEGER PRIMARY KEY, name TEXT, username TEXT, password TEXT, dept TEXT, hords TEXT,  email TEXT, number INTEGER,flaglogged TEXT)");
    print("Table is created");

    await db.execute(
        "CREATE TABLE Admin(aid INTEGER PRIMARY KEY, aname TEXT, ausername TEXT, apassword TEXT, adept TEXT, ahords TEXT,  aemail TEXT, anumber INTEGER,flaglogged TEXT)");
    print("Table is created");

    await db.execute(
        "CREATE TABLE Manager(mid INTEGER PRIMARY KEY, mname TEXT, musername TEXT, mpassword TEXT, mdept TEXT, mhords TEXT,  memail TEXT, mnumber INTEGER,flaglogged TEXT)");
    print("Table is created");


    await db.execute(
        "CREATE TABLE Menu(dishid INTEGER PRIMARY KEY, dishname TEXT, rate INTEGER)");
    print("Menu is created");
  }

  /*Future<List> getUser() async {
    var dbClient = await db;
    var result = await dbClient.rawQuery('SELECT * FROM User');
    return result.toList();
  }
  Future<int> updateUser(User user) async {
    return await db.query("User", User.toMap(), where: "id = ?", whereArgs: [User]);
  }*/
  //user insertion
  Future<int> saveUser(User user) async {
    var dbClient = await db;
    print(user.name);
    int res = await dbClient.insert("User", user.toMap());
    List<Map> list = await dbClient.rawQuery('SELECT * FROM User');
    print(list);
    return res;
  }

  //user deletion
  Future<int> deleteUser(User user) async {
    var dbClient = await db;
    int res = await dbClient.delete("User");
    return res;
  }

  Future<User> selectUser(User user) async {
    print("Select User");
    print(user.username);
    print(user.password);
    var dbClient = await db;
    List<Map> maps = await dbClient.query(tableUser,
        columns: [columnUserName, columnPassword],
        where: "$columnUserName = ? and $columnPassword = ?",
        whereArgs: [user.username, user.password]);
    print(maps);
    if (maps.length > 0) {
      print("User Exist !!!");
      return user;
    } else {
      return null;
    }
  }
  //admin insertion
  Future<int> saveAdmin(Admin admin) async {
    var dbClient = await db;
    print(admin.aname);
    int res = await dbClient.insert("Admin", admin.toMap());
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Admin');
    print(list);
    return res;
  }

  //admin deletion
  Future<int> deleteAdmin(Admin admin) async {
    var dbClient = await db;
    int res = await dbClient.delete("Admin");
    return res;
  }

  Future<Admin> selectAdmin(Admin admin) async {
    print("Select Admin");
    print(admin.ausername);
    print(admin.apassword);
    var dbClient = await db;
    List<Map> maps = await dbClient.query(tableAdmin,
        columns: [columnAUserName, columnAPassword],
        where: "$columnAUserName = ? and $columnAPassword = ?",
        whereArgs: [admin.ausername, admin.apassword]);
    print(maps);
    if (maps.length > 0) {
      print("Admin Exist !!!");
      return admin;
    } else {
      return null;
    }
  }

  //insertion
  Future<int> saveManager(Manager manager) async {
    var dbClient = await db;
    print(manager.mname);
    int res = await dbClient.insert("Manager", manager.toMap());
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Manager');
    print(list);
    return res;
  }

  //deletion
  Future<int> deleteManager(Manager manager) async {
    var dbClient = await db;
    int res = await dbClient.delete("Manager");
    return res;
  }

  Future<Manager> selectManager(Manager manager) async {
    print("Select Manager");
    print(manager.musername);
    print(manager.mpassword);
    var dbClient = await db;
    List<Map> maps = await dbClient.query(tableManager,
        columns: [columnMUserName, columnMPassword],
        where: "$columnMUserName = ? and $columnMPassword = ?",
        whereArgs: [manager.musername, manager.mpassword]);
    print(maps);
    if (maps.length > 0) {
      print("Manager Exist !!!");
      return manager;
    } else {
      return null;
    }
  }

  //menu table
  //insertion
  Future<int> saveMenu(Menu menuitem) async {
    var dbClient1 = await db;
    print(menuitem.dishname);
    print(tableMenu);
    int res = await dbClient1.insert("Menu", menuitem.toMap());
    List<Map> list = await dbClient1.rawQuery('SELECT * FROM Menu');
    print(list);
    return res;
  }

  //deletion
  Future<int> deleteMenu(Menu menuitem) async {
    var dbClient1 = await db;
    int res = await dbClient1.delete("Menu");
    return res;
  }
}
