import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/text_field.dart';

class AddNote extends StatefulWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();

  CollectionReference ref = Firebase.instance.collection('notes');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          FlatButton(
            onPressed: () {},
            child: Text('Save'),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all()),
              child: TextField(
                controller: title,
                decoration: InputDecoration(hintText: 'Title'),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              decoration: BoxDecoration(border: Border.all()),
              child: TextField(
                controller: content,
                //maxLength: null,
                //expands: true,
                decoration: InputDecoration(hintText: 'Content'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
