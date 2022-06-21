import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  final noteController = TextEditingController();
  late SharedPreferences pref;
  String? noteText;

  @override
  void initState() {
    super.initState();

    init();
  }

  Future init() async {
    pref = await SharedPreferences.getInstance();

    String? noteText = pref.getString('notes');
    if (noteText != null) {
      noteController.text = noteText.toString();}
    else return;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromARGB(255, 41, 41, 41),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              controller: noteController,
              onChanged: (text) async {
                pref.setString('notes', text);
              },
              decoration: InputDecoration(border: InputBorder.none),
              style: TextStyle(color: Colors.white),
              maxLines: 31,
            ),
          ),
        ])),
      );
}
