
import 'package:demo_project/Lab_9/A_1/strings.dart';
import 'package:demo_project/Lab_9/A_3/listmap_database_modal.dart';
import 'package:demo_project/Lab_9/A_3/listmap_dtabase_database.dart';
import 'package:demo_project/utils/import_export.dart';

class SQLiteDisplayRXListController extends GetxController {
  RxList<SQLiteDisplayRXListModel> studentList = <SQLiteDisplayRXListModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchAllStudents();
  }

  Future<void> fetchAllStudents() async {
    final db = await SQLiteDisplayRXListDatabase.instance.database;
    final result = await db.query(TBL_STUDENT);
    studentList.value = result.map((e) => SQLiteDisplayRXListModel.fromMap(e)).toList();
  }

  Future<void> addSampleStudent() async {
    final db = await SQLiteDisplayRXListDatabase.instance.database;

    final student = SQLiteDisplayRXListModel(
      name: "Kavyam",
      enrollmentNumber: "23010101114",
      grade12: 89.5,
      currentCgpa: 8.58,
      email: "kavyam@example.com",
      phone: "1234567890",
      city: "Rajkot",
    );

    await db.insert(TBL_STUDENT, student.toMap());
    fetchAllStudents();
  }

  Future<void> deleteAll() async {
    final db = await SQLiteDisplayRXListDatabase.instance.database;
    await db.delete(TBL_STUDENT);
    fetchAllStudents();
  }
}