import 'package:get/get.dart';

class Utils {
  Utils._();

  /// Show snack bar
  static showSnackBar(String title, String message) {
    Get.snackbar(title, message);
  }
}
