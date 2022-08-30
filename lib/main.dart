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
                    value: visarms,
                    onChanged: (val) {
                      setState(() {
                        visarms = val!;
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
                    value: viseyebro,
                    onChanged: (val) {
                      setState(() {
                        viseyebro = val!;
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
                    value: viseye,
                    onChanged: (val) {
                      setState(() {
                        viseye = val!;
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
                    value: visears,
                    onChanged: (val) {
                      setState(() {
                        visears = val!;
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
                    value: visglass,
                    onChanged: (val) {
                      setState(() {
                        visglass = val!;
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
                    value: vishat,
                    onChanged: (val) {
                      setState(() {
                        vishat = val!;
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
                    value: vismouth,
                    onChanged: (val) {
                      setState(() {
                        vismouth = val!;
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
                    value: vismust,
                    onChanged: (val) {
                      setState(() {
                        vismust = val!;
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
                    value: visnose,
                    onChanged: (val) {
                      setState(() {
                        visnose = val!;
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
                    value: visshose,
                    onChanged: (val) {
                      setState(() {
                        visshose = val!;
                      });
                    }),
              ]),
            ])
          ]))),
    );
  }
}
