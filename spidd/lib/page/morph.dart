import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Morph extends StatefulWidget {
  @override
  _MorphState createState() => _MorphState();
}

class _MorphState extends State<Morph> {

  String? morphText;
  final morphController = TextEditingController();
  String? typeText;
  final typeController = TextEditingController();
  String? sizeText;
  final sizeController = TextEditingController();

  //pyshical
  String? pc1Text;
  final pc1Controller = TextEditingController();
  String? pc2Text;
  final pc2Controller = TextEditingController();
  String? pc3Text;
  final pc3Controller = TextEditingController();
  String? pc4Text;
  final pc4Controller = TextEditingController();

  //mental
  String? mc1Text;
  final mc1Controller = TextEditingController();
  String? mc2Text;
  final mc2Controller = TextEditingController();
  String? mc3Text;
  final mc3Controller = TextEditingController();
  String? mc4Text;
  final mc4Controller = TextEditingController();

  //ware
  String? wareText;
  final wareController = TextEditingController();

  late SharedPreferences pref;
  

  @override
  void initState() {
    super.initState();

    init();
  }

  Future init() async {
    pref = await SharedPreferences.getInstance();

    String? morphText = pref.getString('morph');
    if (morphText != null) {
      morphController.text = morphText.toString();}
    else return;
    setState(() => this.morphText = morphText);

    String? typeText = pref.getString('type');
    if (typeText != null) {
      typeController.text = typeText.toString();}
    else return;
    setState(() => this.typeText = typeText);

    String? sizeText = pref.getString('size');
    if (sizeText != null) {
      sizeController.text = sizeText.toString();}
    else return;
    setState(() => this.sizeText = sizeText);

    //pysical
    String? pc1Text = pref.getString('pc1');
    if (pc1Text != null) {
      pc1Controller.text = pc1Text.toString();}
    else return;
    setState(() => this.pc1Text = pc1Text);

     String? pc2Text = pref.getString('pc2');
    if (pc2Text != null) {
      pc2Controller.text = pc2Text.toString();}
    else return;
    setState(() => this.pc2Text = pc2Text);

    String? pc3Text = pref.getString('pc3');
    if (pc3Text != null) {
      pc3Controller.text = pc3Text.toString();}
    else return;
    setState(() => this.pc3Text = pc3Text);

    String? pc4Text = pref.getString('pc4');
    if (pc4Text != null) {
      pc4Controller.text = pc4Text.toString();}
    else return;
    setState(() => this.pc4Text = pc4Text);

    //mental
    String? mc1Text = pref.getString('mc1');
    if (mc1Text != null) {
      mc1Controller.text = mc1Text.toString();}
    else return;
    setState(() => this.mc1Text = mc1Text);

    String? mc2Text = pref.getString('mc2');
    if (mc2Text != null) {
      mc2Controller.text = mc2Text.toString();}
    else return;
    setState(() => this.mc2Text = mc2Text);

    String? mc3Text = pref.getString('mc3');
    if (mc3Text != null) {
      mc3Controller.text = mc3Text.toString();}
    else return;
    setState(() => this.mc3Text = mc3Text);

    String? mc4Text = pref.getString('mc4');
    if (mc4Text != null) {
      mc4Controller.text = mc4Text.toString();}
    else return;
    setState(() => this.mc4Text = mc4Text);

    //ware
    String? wareText = pref.getString('ware');
    if (wareText != null) {
      wareController.text = wareText.toString();}
    else return;
    setState(() => this.wareText = wareText);

  }


  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Color.fromARGB(255, 41, 41, 41),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                SizedBox(
                  width: 150,
                  child: TextField(
                    controller: morphController,
                      onChanged: (text) async {
                        pref.setString('morph', text);
                      },
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        labelText: "Morph",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 129, 129, 129),
                        )),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: TextField(
                    controller: typeController,
              onChanged: (text) async {
                pref.setString('type', text);
              },
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        labelText: "Type",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 129, 129, 129),
                        )),
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: TextField(
                    controller: sizeController,
              onChanged: (text) async {
                pref.setString('size', text);
              },
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        labelText: "Size",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 129, 129, 129),
                        )),
                  ),
                ),
              ]),
              SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                SizedBox(
                  height: 180,
                  width: 160,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 2,
                              style: BorderStyle.solid)),
                      child: Column(
                        children: [
                          SizedBox(height: 6),
                          Text('Physical Stress',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                          Text('Conditions',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromARGB(255, 165, 165, 165))),
                          SizedBox(
                            width: 145,
                            height: 35,
                            child: TextField(
                              controller: pc1Controller,
                              onChanged: (text) async {
                                pref.setString('pc1', text);
                              },
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                          SizedBox(
                            width: 145,
                            height: 35,
                            child: TextField(
                              controller: pc2Controller,
                              onChanged: (text) async {
                                pref.setString('pc2', text);
                              },
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                          SizedBox(
                            width: 145,
                            height: 35,
                            child: TextField(
                              controller: pc3Controller,
                              onChanged: (text) async {
                                pref.setString('pc3', text);
                              },
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                          SizedBox(
                            width: 145,
                            height: 35,
                            child: TextField(
                              controller: pc4Controller,
                              onChanged: (text) async {
                                pref.setString('pc4', text);
                              },
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 180,
                  width: 160,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 2,
                              style: BorderStyle.solid)),
                      child: Column(
                        children: [
                          SizedBox(height: 6),
                          Text('Mental Stress',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                          Text('Conditions',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromARGB(255, 165, 165, 165))),
                          SizedBox(
                            width: 145,
                            height: 35,
                            child: TextField(
                              controller: mc1Controller,
                              onChanged: (text) async {
                                pref.setString('mc1', text);
                              },
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                          SizedBox(
                            width: 145,
                            height: 35,
                            child: TextField(
                              controller: mc2Controller,
                              onChanged: (text) async {
                                pref.setString('mc2', text);
                              },
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                          SizedBox(
                            width: 145,
                            height: 35,
                            child: TextField(
                              controller: mc3Controller,
                              onChanged: (text) async {
                                pref.setString('mc3', text);
                              },
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                          SizedBox(
                            width: 145,
                            height: 35,
                            child: TextField(
                              controller: mc4Controller,
                              onChanged: (text) async {
                                pref.setString('mc4', text);
                              },
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ],
                      )),
                ),
              ]),
              SizedBox(
                height: 12,
              ),
              TextField(
                controller: wareController,
                              onChanged: (text) async {
                                pref.setString('ware', text);
                              },
                style: TextStyle(color: Colors.white),
                maxLines: 14,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Ware",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(255, 129, 129, 129),
                    )),
              ),
            ]),
          )
        ],
      )));
}
