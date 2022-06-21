
/*
onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                          backgroundColor: Color.fromARGB(255, 66, 66, 66),
                          content: 
                          TextField(
                            style: TextStyle(color: Colors.white),
                            controller: _textController,
                            decoration: InputDecoration(
                                labelText: 'Number of D12\'s',
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 190, 190, 190),
                                )),
                            keyboardType: TextInputType.number,
                          ),
                          actions: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MaterialButton(
                                  color: Color.fromARGB(255, 49, 49, 49),
                                  textColor: Colors.white,
                                  onPressed: () {
                                   print(rollDice(_textController.text));
                                  },
                                  child: Text('Throw!'),
                                ),
                              ],
                            ),
                            
                          ]
                          )
                          );
            },
            */

/*
            showDialog(
                  context: context,
                  builder: (BuildContext context) => Dialog(
                      insetPadding: EdgeInsets.symmetric(horizontal: 150),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: Color.fromARGB(255, 66, 66, 66),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 12),
                          Text('Number of D12\'s',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 202, 202, 202))),
                          SizedBox(
                            height: 35,
                            width: 30,
                            child: TextField(
                              autofocus: true,
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                              controller: _textController,
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(height: 12),
                          FlatButton(
                            child: Icon(FontAwesomeIcons.dice, size: 40),
                            color: Colors.transparent,
                            textColor: Colors.white,
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) => Dialog());

                              print(rollDice(_textController.text));
                            },
                          ),
                        ],
                      )));

                      */

/*
import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  double hight = 5;
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
                    height: 560,
                    width: 105,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey,
                                width: 2,
                                style: BorderStyle.solid)),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                    height: 30,
                                    width: 120,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Align(
                                          alignment: Alignment(0.4, 0),
                                          child: Text('Psi',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                    )),
                                SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 212, 212, 212),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          width: 2,
                                          style: BorderStyle.solid),
                                    ),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: TextField(
                                            textAlign: TextAlign.center,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              isDense: true,
                                            ),
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 20, 20, 20),
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold))),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: hight),
                            Stack(
                              children: [
                                SizedBox(
                                    height: 30,
                                    width: 120,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Align(
                                          alignment: Alignment(0.4, 0),
                                          child: Text('Psi',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                    )),
                                SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 212, 212, 212),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          width: 2,
                                          style: BorderStyle.solid),
                                    ),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: TextField(
                                            textAlign: TextAlign.center,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              isDense: true,
                                            ),
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 20, 20, 20),
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold))),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: hight),
                            
                          ],
                        ))),
                SizedBox(
                    height: 560,
                    width: 105,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey,
                                width: 2,
                                style: BorderStyle.solid)))),
                SizedBox(
                    height: 560,
                    width: 105,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey,
                                width: 2,
                                style: BorderStyle.solid))))
              ])
            ]),
          )
        ],
      )));
}
*/


/*
=========================================

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Skills extends StatefulWidget {
  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  final bController = TextEditingController();
  late SharedPreferences pref;
  String? bText;

  @override
  void initState() {
    super.initState();

    init();
    
  }

  Future init() async {
    pref = await SharedPreferences.getInstance();

    String? bText = pref.getString('b');
    if (bText != null) {
      bController.text = bText.toString();
    } else
      return;
    setState(() => this.bText = bText);
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
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [skillTreeMain(), skillTreeSide(), skillTreeSide()])
            ]),
          )
        ],
      )));


//////////////////////////




//////////////////////////      
}

Widget skillList(skillName) {
  double boxhight = 27.25;
  double circleSize = 27.25;
  double fontSize = 14;
  double circleFontSize = 12.3;


  return (Stack(
    children: [
      SizedBox(
          height: boxhight,
          width: 120,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 0, 0),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Align(
                alignment: Alignment(0.4, 0),
                child: Text(skillName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: fontSize,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))),
          )),
      SizedBox(
        height: boxhight,
        width: 30,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 212, 212, 212),
            shape: BoxShape.circle,
            border: Border.all(
                color: Color.fromARGB(255, 0, 0, 0),
                width: 2,
                style: BorderStyle.solid),
          ),
          child: Align(
              alignment: Alignment.center,
              child: TextField(
                  controller: bController,
                  onChanged: (text) async {
                    pref.setString('b', text);
                  },
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    isDense: true,
                  ),
                  style: TextStyle(
                      color: Color.fromARGB(255, 20, 20, 20),
                      fontSize: circleFontSize,
                      fontWeight: FontWeight.bold))),
        ),
      ),
    ],
  ));
}

Widget skillTreeMain() {
  double hight = 2;
  return (SizedBox(
      height: 560,
      width: 105,
      child: DecoratedBox(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Color.fromARGB(255, 41, 41, 41),
                  width: 2,
                  style: BorderStyle.solid)),
          child: Column(
            children: [
              skillList('Psi'),
              SizedBox(height: hight),
              skillList('Hardware'),
              SizedBox(height: hight),
              skillList('Infosec'),
              SizedBox(height: hight),
              skillList('Interface'),
              SizedBox(height: hight),
              skillList('Kinesics'),
              SizedBox(height: hight),
              skillList('Medicine'),
              SizedBox(height: hight),
              skillList('Melee'),
              SizedBox(height: hight),
              skillList('Perceive'),
              SizedBox(height: hight),
              skillList('Persuade'),
              SizedBox(height: hight),
              skillList('Pilot'),
              SizedBox(height: hight),
              skillList('Program'),
              SizedBox(height: hight),
              skillList('Provoke'),
              SizedBox(height: hight),
              skillList('Research'),
              SizedBox(height: hight),
              skillList('Survival'),
              SizedBox(height: hight),
              skillList('Guns'),
              SizedBox(height: hight),
              skillList('Free Fall'),
              SizedBox(height: hight),
              skillList('Fray'),
              SizedBox(height: hight),
              skillList('Deceive'),
              SizedBox(height: hight),
              skillList('Athletics'),
              SizedBox(height: hight),
            ],
          ))));
}

Widget skillListEmpty() {
  double boxhight = 27.25;
  double circleSize = 27.25;
  double fontSize = 12;
  double circleFontSize = 12.3;
  return (Stack(
    children: [
      SizedBox(
          height: boxhight,
          width: 120,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 0, 0),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Align(
                alignment: Alignment.center,
                child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      isDense: true,
                      contentPadding: EdgeInsets.all(5.0),
                    ),
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: fontSize,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))),
          )),
      SizedBox(
        height: boxhight,
        width: 30,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 212, 212, 212),
            shape: BoxShape.circle,
            border: Border.all(
                color: Color.fromARGB(255, 0, 0, 0),
                width: 2,
                style: BorderStyle.solid),
          ),
          child: Align(
              alignment: Alignment.center,
              child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    isDense: true,
                  ),
                  style: TextStyle(
                      color: Color.fromARGB(255, 20, 20, 20),
                      fontSize: circleFontSize,
                      fontWeight: FontWeight.bold))),
        ),
      ),
    ],
  ));
}

Widget skillTreeSide() {
  double hight = 2;
  return (SizedBox(
      height: 560,
      width: 105,
      child: DecoratedBox(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Color.fromARGB(255, 41, 41, 41),
                  width: 2,
                  style: BorderStyle.solid)),
          child: Column(
            children: [
              skillListEmpty(),
              SizedBox(height: hight),
              skillListEmpty(),
              SizedBox(height: hight),
              skillListEmpty(),
              SizedBox(height: hight),
              skillListEmpty(),
              SizedBox(height: hight),
              skillListEmpty(),
              SizedBox(height: hight),
              skillListEmpty(),
              SizedBox(height: hight),
              skillListEmpty(),
              SizedBox(height: hight),
              skillListEmpty(),
              SizedBox(height: hight),
              skillListEmpty(),
              SizedBox(height: hight),
              skillListEmpty(),
              SizedBox(height: hight),
              skillListEmpty(),
              SizedBox(height: hight),
              skillListEmpty(),
              SizedBox(height: hight),
              skillListEmpty(),
              SizedBox(height: hight),
              skillListEmpty(),
              SizedBox(height: hight),
              skillListEmpty(),
              SizedBox(height: hight),
              skillListEmpty(),
              SizedBox(height: hight),
              skillListEmpty(),
              SizedBox(height: hight),
              skillListEmpty(),
              SizedBox(height: hight),
              skillListEmpty(),
              SizedBox(height: hight),
            ],
          ))));
}
===============================
*/





