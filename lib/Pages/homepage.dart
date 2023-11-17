import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studentlistformwithflutterhive/Pages/registerpage.dart';
import 'package:studentlistformwithflutterhive/Pages/studentlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Student Form')),
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
              child: Text(
                'Welcome to our Student User Registration App! We\'re excited to help you get started on your educational journey.',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Image.asset(
              'lib/Images/college-students-concept-illustration_114360-13745.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(RegisterPage());
              },
              child: Text('Register'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('If you want to see student list --'),
                TextButton(
                  onPressed: () {
                    Get.to(StudentList());
                  },
                  child: Text('View'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
