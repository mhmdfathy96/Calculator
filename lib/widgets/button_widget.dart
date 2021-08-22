import 'package:calculator/styles/styles.dart';
import 'package:flutter/material.dart';

ElevatedButton functionButton(VoidCallback onPressed,
    {IconData? iconData, String? text}) {
  return ElevatedButton(
    onPressed:  onPressed,
    child:Center (
      child:(iconData != null)
        ? Icon(iconData,color: Colors.black,size: 35,)
        : Text(
            text ?? "",
            style: textStyle1(),
      textAlign: TextAlign.center,
          ),),
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(5),
      backgroundColor: MaterialStateProperty.all(Colors.white38),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    ),
  );
}

ElevatedButton numberButton(VoidCallback onPressed, String text) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Center(
      child: Text(
        text,
        style: textStyle2(),
        textAlign: TextAlign.center,
      ),
    ),
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(5),
      backgroundColor: MaterialStateProperty.all(Colors.white),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    ),
  );
}
