import '/localization/localization.dart';
import '/routers/pages.dart';
import '/routers/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chat Application',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: Routes.SPLASH,
      getPages: Pages.pages,
      translations: Localization(),
      locale: Get.locale ?? Locale('en'),
    );
  }
}
