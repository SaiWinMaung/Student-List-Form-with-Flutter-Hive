// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:studentlistformwithflutterhive/Database/box.dart';
import 'package:studentlistformwithflutterhive/Database/student.dart';
import 'package:studentlistformwithflutterhive/Pages/homepage.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(StudentAdapter());
  studentBox = await Hive.openBox<Student>('studentBox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}
