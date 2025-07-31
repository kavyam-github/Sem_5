import 'import_export.dart';

class CmnFunctions {
  void navigatePush(context, viewPage, func) {
    Navigator.of(context)
        .push(
      MaterialPageRoute(
        builder: (context) {
          return viewPage;
        },
      ),
    )
        .then((value) {
      func(value);
    });
  }
}
