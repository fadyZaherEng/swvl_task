import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:swvl_task/models/emp.dart';
import 'package:swvl_task/shared/component/components.dart';

class SqlDb {
  static dynamic mydb ;
  static intialDb() async {
    String databasepath = await getDatabasesPath() ;
    String path = join(databasepath , 'swvl.db') ;
    mydb = await openDatabase(path , onCreate: _onCreate , version: 1  , onUpgrade:_onUpgrade ) ;
  }
  static _onUpgrade(Database db , int oldversion , int newversion ) {
    print("onUpgrade =====================================") ;
  }
  static _onCreate(Database db , int version) async {
    await db.execute('CREATE TABLE Employers (Id INTEGER PRIMARY KEY AUTOINCREMENT,'
        'FullName TEXT,Phone Text,Exp TEXT,date TEXT,title TEXT,Sal INTEGER)') ;
    print(" onCreate =====================================") ;

  }

  Future<List<EmpInfo>> getAllEmps() async {
    List<Map<String, dynamic>> maps = await mydb!.query('Employers');
    print( maps[0]['FullName']);
    List<EmpInfo> listResult= List.generate(maps.length, (index)
    {
      return EmpInfo(
          FullName: maps[index]['FullName'],
          title: maps[index]['title'],
          Exp: maps[index]['Exp'],
          date: maps[index]['date'],
          Sal: maps[index]['Sal'],
          Phone: maps[index]['Phone']);
    });
    return listResult;
  }
  Future insertEmps({required EmpInfo EmpInfo}) async {

    Future future= mydb!.insert('Employers',
      EmpInfo.toMap(), conflictAlgorithm: ConflictAlgorithm.replace,);

    return future ;
  }
  // updateData(String sql) async {
  //   Database? mydb = await db ;
  //   int  response = await  mydb!.rawUpdate(sql);
  //   return response ;
  // }
  // deleteData(String sql) async {
  //   Database? mydb = await db ;
  //   int  response = await  mydb!.rawDelete(sql);
  //   return response ;
  // }
  // readData(String sql) async {
  //   Database? mydb = await db ;
  //   List<Map> response = await  mydb!.rawQuery(sql);
  //   return response ;
  // }

// SELECT
// DELETE
// UPDATE
// INSERT


}