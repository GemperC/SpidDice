import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SkillBoxEmpty extends StatefulWidget {
  final String keyc;
  final String skillNamec;

  const SkillBoxEmpty({
    Key? key,
    required this.keyc,
    required this.skillNamec,
  }) : super(key: key);

  @override
  _SkillBoxEmptyState createState() => new _SkillBoxEmptyState();
}

class _SkillBoxEmptyState extends State<SkillBoxEmpty> {
  final bController = TextEditingController();
  final skillController = TextEditingController();
  late SharedPreferences pref;
  String? bText;
  String? skillText;

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
    }

    String? skillText = pref.getString(widget.skillNamec);
    if (skillText != null) {
      skillController.text = skillText.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
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
                      controller: skillController,
                      onChanged: (text) async {
                        pref.setString(widget.skillNamec, text);
                      },
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

