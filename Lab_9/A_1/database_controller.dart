import 'package:demo_project/Lab_9/A_1/database.dart';
import 'package:demo_project/Lab_9/A_1/database_model.dart';
import 'package:demo_project/Lab_9/A_1/strings.dart';
import 'package:demo_project/utils/import_export.dart';

class SQLiteDatabaseController extends GetxController {
  var studentList = <SQLiteDatabaseModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadStudents();
  }

  Future<void> loadStudents() async {
    final db = await SQLiteDatabase.instance.database;
    final result = await db.query(TBL_STUDENT);
    studentList.value = result.map((json) => SQLiteDatabaseModel.fromMap(json)).toList();
  }

  Future<void> addStudent(SQLiteDatabaseModel student) async {
    final db = await SQLiteDatabase.instance.database;
    await db.insert(TBL_STUDENT, student.toMap());
    loadStudents();
  }
}