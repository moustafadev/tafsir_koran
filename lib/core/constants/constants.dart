import 'package:flutter/material.dart';


const urlImage = 'assets/images';


EdgeInsets padding(context) {
  var displayHeight = MediaQuery.of(context).size.height;
  var displayWidth = MediaQuery.of(context).size.width;
  return EdgeInsets.only(
      top: displayHeight * 0.03,
      bottom: displayHeight * 0.01,
      left: displayWidth * 0.04,
      right: displayWidth * 0.04);
}
