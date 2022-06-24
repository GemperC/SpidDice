import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Gear extends StatefulWidget {
  @override
  _GearState createState() => _GearState();
}

class _GearState extends State<Gear> {
  //Text controllers
  final gearController = TextEditingController();
  late SharedPreferences pref;
  String? gearText;

  @override
  void initState() {
    super.initState();

    init();
  }

  Future init() async {
    pref = await SharedPreferences.getInstance();

    String? gearText = pref.getString('gear');
    if (gearText != null) {
      gearController.text = gearText.toString();}

  }


  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromARGB(255, 41, 41, 41),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              controller: gearController,
              onChanged: (text) async {
                pref.setString('gear', text);
              },
              decoration: InputDecoration(border: InputBorder.none),
              style: TextStyle(color: Colors.white),
              maxLines: 31,
            ),
          ),
        ])),
      );
}
