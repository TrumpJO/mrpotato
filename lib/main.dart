import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:list_ckbox/BodyPart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool def_BodyParts_HasNOTBeenConstructed = true;
  Map def_BodyParts = {
    "Body": "images/body.png",
    "Arms": "images/arms.png",
    "Eyes": "images/eyes.png",
    "EyeBrows": "images/eyebrows.png",
    "Ears": "images/ears.png",
    "Glasses": "images/glasses.png",
    "Hat": "images/hat.png",
    "Mouth": "images/mouth.png",
    "Mustache": "images/mustache.png",
    "Nose": "images/nose.png",
    "Shoes": "images/shoes.png",
  };

  @override
  Widget build(BuildContext context) {
    if (def_BodyParts_HasNOTBeenConstructed) {
      Construct_BodyParts_Default(def_BodyParts);
      def_BodyParts_HasNOTBeenConstructed = false;
    }
    potatoBodyIsAlways_Checked();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Mr Potato!",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: BodyPart.getAllStacksVisibility(),
            ),
            Column(
              children: allCheckBoxesOf_BodyParts(),
            ),
          ],
        ),
      ),
    );
  }

  void Construct_BodyParts_Default(Map map) {
    map.forEach(
      (key, value) {
        new BodyPart(name: key, imagePath: value);
      },
    );
  }

  void potatoBodyIsAlways_Checked({bool isChecked = true}) {
    BodyPart.bodyParts[0].setVisibility(isChecked);
  }

  List<Widget> allCheckBoxesOf_BodyParts() {
    List<Widget> allCheckBoxes = [];
    BodyPart.bodyParts.forEach((element) {
      allCheckBoxes.add(Checkbox_BodyPart(element));
    });
    return allCheckBoxes;
  }

  Widget Checkbox_BodyPart(BodyPart bodyPart) {
    return CheckboxListTile(
      secondary: Image.asset(
        bodyPart.getImagePath(),
        color: Colors.black,
      ),
      title: Text(
        bodyPart.getName(),
        style: TextStyle(fontSize: 20),
      ),
      value: bodyPart.getVisibility(),
      onChanged: (val) {
        setState(() {
          bodyPart.setVisibility(val!);
          print("\nNew: " + bodyPart.tempListDebug());
        });
      },
    );
  }
}
