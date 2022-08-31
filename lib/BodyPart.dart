import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_ckbox/main.dart';

class BodyPart {
  String _name = "";
  String _imagePath = "";
  bool _visability = false;
  static List<BodyPart> bodyParts = [];

  BodyPart({
    required String name,
    required String imagePath,
    bool visability = false,
  }) {
    _name = name;
    _imagePath = imagePath;
    _visability = visability;
    bodyParts.add(this);
    print(name + " Added.\n"); // Used for Debugging
  }

  String getName() {
    return _name;
  }

  String getImagePath() {
    return _imagePath;
  }

  bool getVisibility() {
    return _visability;
  }

  void setVisibility(bool visibility) {
    _visability = visibility;
  }

  static List<Widget> getAllStacksVisibility() {
    List<Widget> allWidgets = [_getFullStack()];
    return allWidgets;
  }

  static Widget _getFullStack() {
    List<Widget> allStacks = [];
    bodyParts.forEach((element) {
      allStacks.add(element.visibility());
    });
    return Stack(
      alignment: Alignment.center,
      children: allStacks,
    );
  }

  Visibility visibility() {
    return Visibility(
      child: Image.asset(_imagePath),
      visible: _visability,
    );
  }

  /// Used for Debugging
  String tempListDebug() {
    String sumList = "";
    bodyParts.forEach((element) {
      sumList += element._name + " |";
    });
    return sumList;
  }
}
