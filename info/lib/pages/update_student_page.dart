import 'package:flutter/material.dart';

class UpdateStudentPage extends StatefulWidget {
  const UpdateStudentPage({Key? key}) : super(key: key);

  @override
  State<UpdateStudentPage> createState() => _UpdateStudentPageState();
}

class _UpdateStudentPageState extends State<UpdateStudentPage> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Update Student page',
      style: TextStyle(fontSize: 50.0),
    );
  }
}
