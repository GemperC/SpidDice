import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  final nameController = TextEditingController();
  String? nameText;
  final ahcController = TextEditingController();
  String? ahcText;
  final atController = TextEditingController();
  String? atText;
  final a1Controller = TextEditingController();
  String? a1Text;
  final a2Controller = TextEditingController();
  String? a2Text;
  final a3Controller = TextEditingController();
  String? a3Text;
  final bgController = TextEditingController();
  String? bgText;

  late SharedPreferences pref;

  @override
  void initState() {
    super.initState();

    init();
  }

  Future init() async {
    pref = await SharedPreferences.getInstance();

    String? nameText = pref.getString('name');
    if (nameText != null) {
      nameController.text = nameText.toString();}
    else return;
    setState(() => this.nameText = nameText);

    String? ahcText = pref.getString('ahc');
    if (ahcText != null) {
      ahcController.text = ahcText.toString();}
    else return;
    setState(() => this.ahcText = ahcText);

     String? atText = pref.getString('at');
    if (atText != null) {
      atController.text = atText.toString();}
    else return;
    setState(() => this.atText = atText);

    String? a1Text = pref.getString('a1');
    if (a1Text != null) {
      a1Controller.text = a1Text.toString();}
    else return;
    setState(() => this.a1Text = a1Text);

    String? a2Text = pref.getString('a2');
    if (a2Text != null) {
      a2Controller.text = a2Text.toString();}
    else return;
    setState(() => this.a2Text = a2Text);

    String? a3Text = pref.getString('a3');
    if (a3Text != null) {
      a3Controller.text = a3Text.toString();}
    else return;
    setState(() => this.a3Text = a3Text);

    String? bgText = pref.getString('bg');
    if (bgText != null) {
      bgController.text = bgText.toString();}
    else return;
    setState(() => this.bgText = bgText);


  }

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Color.fromARGB(255, 41, 41, 41),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Column(children: [
              TextField(
                controller: nameController,
                onChanged: (text) async {
                  pref.setString('name', text);
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: "Name",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 129, 129, 129),
                    )),
              ),
              TextField(
                controller: ahcController,
              onChanged: (text) async {
                pref.setString('ahc', text);
              },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: "Aspect: High Concept",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 129, 129, 129),
                    )),
              ),
              TextField(
              controller: atController,
              onChanged: (text) async {
                pref.setString('at', text);
              },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: "Aspect: Trouble",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 129, 129, 129),
                    )),
              ),
              TextField(
                controller: a1Controller,
                onChanged: (text) async {
                  pref.setString('a1', text);
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: "Aspect",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 129, 129, 129),
                    )),
              ),
              TextField(
                controller: a2Controller,
                onChanged: (text) async {
                  pref.setString('a2', text);
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: "Aspect",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 129, 129, 129),
                    )),
              ),
              TextField(
                controller: a3Controller,
                onChanged: (text) async {
                  pref.setString('a3', text);
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: "Aspect",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 129, 129, 129),
                    )),
              ),
              TextField(
                controller: bgController,
                onChanged: (text) async {
                  pref.setString('bg', text);
                },
                style: TextStyle(color: Colors.white),
                maxLines: 14,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Background",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 129, 129, 129),
                    )),
              ),
            ]),
          ),
        ]),
      ));
}