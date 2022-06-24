import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SkillBox extends StatefulWidget {
  final String keyc;
  final String skillNamec;

  const SkillBox({Key? key,

  required this.keyc,
  required this.skillNamec,

  }) : super(key: key);
 

  @override
  _SkillBoxState createState() => new _SkillBoxState();
}

class _SkillBoxState extends State<SkillBox> {
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

    String? bText = pref.getString(widget.keyc);
    if (bText != null) {
      bController.text = bText.toString();
    } else
      return;
  }

  @override
  Widget build(BuildContext context) {
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
                  child: Text(widget.skillNamec,
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
                      pref.setString(widget.keyc, text);
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
}

