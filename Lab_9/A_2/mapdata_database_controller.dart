
import 'package:demo_project/Lab_9/A_1/database.dart';
import 'package:demo_project/Lab_9/A_1/strings.dart';
import 'package:demo_project/Lab_9/A_2/mapdata_database_modal.dart';
import 'package:demo_project/utils/import_export.dart';

class SQLiteDatabaseMapController extends GetxController {
  var studentList = <SQLiteDatabaseMapModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchStudents();
  }

  Future<void> fetchStudents() async {
    final db = await SQLiteDatabase.instance.database;
    final result = await db.query(TBL_STUDENT);
    studentList.value = result.map((map) => SQLiteDatabaseMapModel.fromMap(map)).toList();
  }

  Future<void> addStudent(SQLiteDatabaseMapModel student) async {
    final db = await SQLiteDatabase.instance.database;
    await db.insert(TBL_STUDENT, student.toMap());
    fetchStudents();
  }
}