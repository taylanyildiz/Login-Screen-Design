import 'package:chat_app/screens/entry_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/constants.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: Get.locale ?? Locale('en'),
        title: 'Flutter Chat Application',
        theme: ThemeData(
          scaffoldBackgroundColor: CustomColors.scaffoldColor,
          primarySwatch: Colors.blue,
        ),
        home: EntryScreen());
  }
}
