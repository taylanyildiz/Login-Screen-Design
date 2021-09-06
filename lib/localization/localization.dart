import 'lang/en.dart';
import 'lang/tr.dart';
import 'package:get/get.dart';

class Localization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'tr': tr,
        'en': en,
      };
}
