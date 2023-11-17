import 'package:hive/hive.dart';

part 'student.g.dart';

@HiveType(typeId: 1)
class Student {
  Student({
    required this.name,
    required this.age,
    required this.email,
    required this.password,
    required this.address,
    required this.major,
  });
  @HiveField(0)
  String? name;

  @HiveField(1)
  int? age;

  @HiveField(2)
  String? email;

  @HiveField(3)
  String? password;

  @HiveField(4)
  String? address;

  @HiveField(5)
  String? major;
}
