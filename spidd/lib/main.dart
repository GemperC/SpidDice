import 'package:flutter/material.dart';
import 'package:spidd/page/info.dart';
import 'page/info.dart';
import 'page/skills.dart';
import 'page/gear.dart';
import 'page/morph.dart';
import 'page/notes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'SpidDice';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textController = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text('SpidDice'),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 66, 66, 66),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Info'),
                Tab(text: 'Skills'),
                Tab(text: 'Morph'),
                Tab(text: 'Gear'),
                Tab(text: 'Notes'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Info(),
              Skills(),
              Morph(),
              Gear(),
              Notes(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color.fromARGB(0, 26, 26, 26),
            child: Icon(FontAwesomeIcons.diceD20, size: 40),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => Dialog(
                      insetPadding: EdgeInsets.symmetric(horizontal: 100),
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
                              var results = rollDice(_textController.text);
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) => Dialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      backgroundColor:
                                          Color.fromARGB(255, 66, 66, 66),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 12),
                                            Text('Results',
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 187, 187, 187))),
                                            SizedBox(height: 20),
                                            SizedBox(
                                              height: 180,
                                              width: 245,
                                              child: Text(
                                                '$results',
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontSize: 35),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ])));
                            },
                          ),
                        ],
                      )));
            },
          ),
        ));
  }

  Iterable<int> rollDice(numOfDice) sync* {
    if (numOfDice == '') {
      numOfDice = '1';
    }

    for (var i = 0; i < int.parse(numOfDice); i++) {
      var intValue = Random().nextInt(12) + 1;
      yield intValue;
    }
  }
}
