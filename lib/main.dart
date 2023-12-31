import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_note/controllers/authController.dart';
import 'package:flutter_note/controllers/userController.dart';
import 'package:flutter_note/utils/root.dart';
import 'package:flutter_note/utils/theme.dart';
import 'package:get/get.dart';
import 'package:flutter_note/utils/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) {
    Get.put<AuthController>(AuthController());
    Get.put<UserController>(UserController());
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes App',
      theme: Themes().lightTheme,
      darkTheme: Themes().dartTheme,
      themeMode: ThemeMode.system,
      home: Root(),
    );
  }
}
