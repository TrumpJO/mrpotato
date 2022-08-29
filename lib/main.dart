import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool valueofarms = false;
  bool valueofears = false;
  bool valueofeye = false;
  bool valueofeyebrow = false;
  bool valueofglass = false;
  bool valueofhat = false;
  bool valueofmouth = false;
  bool valueofmust = false;
  bool valueofnose = false;
  bool valueofshoes = false;
  bool visarms = false;
  bool visears = false;
  bool viseyebro = false;
  bool viseye = false;
  bool visglass = false;
  bool vishat = false;
  bool vismouth = false;
  bool vismust = false;
  bool visnose = false;
  bool visshose = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: Container(
              child: ListView(children: [
            Stack(children: [
              Visibility(
                child: Image.asset("images/body.png"),
                visible: true,
              ),
              Visibility(
                child: Image.asset("images/arms.png"),
                visible: visarms,
              ),
              Visibility(
                child: Image.asset("images/ears.png"),
                visible: visears,
              ),
              Visibility(
                child: Image.asset("images/eyebrows.png"),
                visible: viseyebro,
              ),
              Visibility(
                child: Image.asset("images/eyes.png"),
                visible: viseye,
              ),
              Visibility(
                child: Image.asset("images/glasses.png"),
                visible: visglass,
              ),
              Visibility(
                child: Image.asset("images/hat.png"),
                visible: vishat,
              ),
              Visibility(
                child: Image.asset("images/mouth.png"),
                visible: vismouth,
              ),
              Visibility(
                child: Image.asset("images/mustache.png"),
                visible: vismust,
              ),
              Visibility(
                child: Image.asset("images/nose.png"),
                visible: visnose,
              ),
              Visibility(
                child: Image.asset("images/shoes.png"),
                visible: visshose,
              ),
            ]),
            Column(children: [
              Row(children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Arms",
                  style: TextStyle(fontSize: 20),
                ),
                Checkbox(
                    value: valueofarms,
                    onChanged: (val) {
                      setState(() {
                        visarms = true;
                        valueofarms = val!;
                      });
                    }),
                SizedBox(
                  width: 40,
                ),
                Text(
                  "EyeBrows",
                  style: TextStyle(fontSize: 20),
                ),
                Checkbox(
                    value: valueofeyebrow,
                    onChanged: (val) {
                      setState(() {
                        viseyebro = true;
                        valueofeyebrow = val!;
                      });
                    }),
              ]),
              Row(children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Eyes",
                  style: TextStyle(fontSize: 20),
                ),
                Checkbox(
                    value: valueofeye,
                    onChanged: (val) {
                      setState(() {
                        viseye = true;
                        valueofeye = val!;
                      });
                    }),
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Ears",
                  style: TextStyle(fontSize: 20),
                ),
                Checkbox(
                    value: valueofears,
                    onChanged: (val) {
                      setState(() {
                        visears = true;
                        valueofears = val!;
                      });
                    }),
              ]),
              Row(children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Glasses",
                  style: TextStyle(fontSize: 20),
                ),
                Checkbox(
                    value: valueofglass,
                    onChanged: (val) {
                      setState(() {
                        visglass = true;
                        valueofglass = val!;
                      });
                    }),
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Hat",
                  style: TextStyle(fontSize: 20),
                ),
                Checkbox(
                    value: valueofhat,
                    onChanged: (val) {
                      setState(() {
                        vishat = true;
                        valueofhat = val!;
                      });
                    }),
              ]),
              Row(children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Mouth",
                  style: TextStyle(fontSize: 20),
                ),
                Checkbox(
                    value: valueofmouth,
                    onChanged: (val) {
                      setState(() {
                        vismouth = true;
                        valueofmouth = val!;
                      });
                    }),
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Mustache",
                  style: TextStyle(fontSize: 20),
                ),
                Checkbox(
                    value: valueofmust,
                    onChanged: (val) {
                      setState(() {
                        vismust = true;
                        valueofmust = val!;
                      });
                    }),
              ]),
              Row(children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  "nose",
                  style: TextStyle(fontSize: 20),
                ),
                Checkbox(
                    value: valueofnose,
                    onChanged: (val) {
                      setState(() {
                        visnose = true;
                        valueofnose = val!;
                      });
                    }),
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Shoes",
                  style: TextStyle(fontSize: 20),
                ),
                Checkbox(
                    value: valueofshoes,
                    onChanged: (val) {
                      setState(() {
                        visshose = true;
                        valueofshoes = val!;
                      });
                    }),
                Checkbox(
                    value: !valueofshoes,
                    onChanged: (val) {
                      setState(() {
                        visshose = false;
                        valueofshoes = val!;
                      });
                    }),
              ]),
            ])
          ]))),
    );
  }
}
