import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'skill_list.dart';
import 'skill_list_empty.dart';

class Skills extends StatefulWidget {
  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
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
                skillTreeMain(), skillTreeSide(), skillTreeSide2()
              ])
            ]),
          )
        ],
      )));

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
                SkillBox(keyc: 'Psi',skillNamec: 'Psi',),SizedBox(height: hight), 
                SkillBox(keyc: 'Hardware',skillNamec: 'Hardware',),SizedBox(height: hight),
                SkillBox(keyc: 'Infosec',skillNamec: 'Infosec',), SizedBox(height: hight),
                SkillBox(keyc: 'Interface',skillNamec: 'Interface',), SizedBox(height: hight),
                SkillBox(keyc: 'Kinesics',skillNamec: 'Kinesics',), SizedBox(height: hight),
                SkillBox(keyc: 'Medicine',skillNamec: 'Medicine',),SizedBox(height: hight),
                SkillBox(keyc: 'Melee',skillNamec: 'Melee',), SizedBox(height: hight),
                SkillBox(keyc: 'Perceive',skillNamec: 'Perceive',),SizedBox(height: hight),
                SkillBox(keyc: 'Persuade',skillNamec: 'Persuade',),SizedBox(height: hight),
                SkillBox(keyc: 'Pilot',skillNamec: 'Pilot',),SizedBox(height: hight),
                SkillBox(keyc: 'Program',skillNamec: 'Program',), SizedBox(height: hight),
                SkillBox(keyc: 'Provoke',skillNamec: 'Provoke',),SizedBox(height: hight),
                SkillBox(keyc: 'Research',skillNamec: 'Research',), SizedBox(height: hight),
                SkillBox(keyc: 'Survival',skillNamec: 'Survival',), SizedBox(height: hight),
                SkillBox(keyc: 'Guns',skillNamec: 'Guns',), SizedBox(height: hight),
                SkillBox(keyc: 'Free Fall',skillNamec: 'Free Fall',),SizedBox(height: hight),
                SkillBox(keyc: 'Fray',skillNamec: 'Fray',), SizedBox(height: hight),
                SkillBox(keyc: 'Deceive',skillNamec: 'Deceive',),SizedBox(height: hight),
                SkillBox(keyc: 'Athletics',skillNamec: 'Athletics',),SizedBox(height: hight),
                ],
            ))));
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
                SkillBoxEmpty(keyc: 'a',skillNamec: 'aa',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'b',skillNamec: 'bb',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'c',skillNamec: 'cc',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'd',skillNamec: 'dd',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'e',skillNamec: 'ee',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'f',skillNamec: 'ff',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'g',skillNamec: 'gg',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'h',skillNamec: 'hh',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'i',skillNamec: 'ii',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'j',skillNamec: 'jj',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'k',skillNamec: 'kk',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'l',skillNamec: 'll',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'm',skillNamec: 'mm',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'n',skillNamec: 'nn',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'o',skillNamec: 'oo',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'p',skillNamec: 'pp',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'q',skillNamec: 'qq',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'r',skillNamec: 'rr',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 's',skillNamec: 'ss',),SizedBox(height: hight),
                
              ],
            ))));
  }

  Widget skillTreeSide2() {
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
                SkillBoxEmpty(keyc: 'a1',skillNamec: 'aa1',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'b1',skillNamec: 'bb1',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'c1',skillNamec: 'cc1',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'd1',skillNamec: 'dd1',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'e1',skillNamec: 'ee1',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'f1',skillNamec: 'ff1',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'g1',skillNamec: 'gg1',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'h1',skillNamec: 'hh1',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'i1',skillNamec: 'ii1',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'j1',skillNamec: 'jj1',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'k1',skillNamec: 'kk1',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'l1',skillNamec: 'll1',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'm1',skillNamec: 'mm1',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'n1',skillNamec: 'nn1',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'o1',skillNamec: 'oo1',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'p1',skillNamec: 'pp1',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'q1',skillNamec: 'qq1',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 'r1',skillNamec: 'rr1',),SizedBox(height: hight),
                SkillBoxEmpty(keyc: 's1',skillNamec: 'ss1',),SizedBox(height: hight),
                
              ],
            ))));
  }

//////////////////////////
}
