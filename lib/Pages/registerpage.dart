// ignore_for_file: unused_field, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studentlistformwithflutterhive/Database/box.dart';
import 'package:studentlistformwithflutterhive/Database/student.dart';
import 'package:studentlistformwithflutterhive/Pages/studentlist.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final ageControlller = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final addressController = TextEditingController();
  final majorController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Form'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 3.0, color: Colors.blue),
                ),
                // ignore: require_trailing_commas
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey, width: 3.0),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Enter Your Name',
                labelText: 'Name',
                labelStyle: TextStyle(color: Colors.blueGrey),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: ageControlller,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 3.0, color: Colors.blue),
                ),
                // ignore: require_trailing_commas
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey, width: 3.0),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Enter Your Age',
                labelText: 'Age',
                labelStyle: TextStyle(color: Colors.blueGrey),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 3.0, color: Colors.blue),
                ),
                // ignore: require_trailing_commas
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey, width: 3.0),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Enter Your Email',
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.blueGrey),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 3.0, color: Colors.blue),
                ),
                // ignore: require_trailing_commas
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey, width: 3.0),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Enter Your Password',
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.blueGrey),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 3.0, color: Colors.blue),
                ),
                // ignore: require_trailing_commas
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey, width: 3.0),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Enter Your Address',
                labelText: 'Address',
                labelStyle: TextStyle(color: Colors.blueGrey),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: majorController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 3.0, color: Colors.blue),
                ),
                // ignore: require_trailing_commas
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey, width: 3.0),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Enter Your Major ',
                labelText: 'Major',
                labelStyle: TextStyle(color: Colors.blueGrey),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                studentBox.put(
                  'key_${nameController}',
                  Student(
                    name: nameController.text,
                    age: int.parse(ageControlller.text),
                    email: emailController.text,
                    password: passwordController.text,
                    address: addressController.text,
                    major: majorController.text,
                  ),
                );
                nameController.clear();
                ageControlller.clear();
                emailController.clear();
                passwordController.clear();
                addressController.clear();
                majorController.clear();
              });
              Get.to(StudentList());
            },
            child: Text('Register'),
          ),
        ],
      ),
    );
  }
}
