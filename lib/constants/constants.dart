import 'package:flutter/material.dart';

LinearGradient linearGradient = LinearGradient(
  colors: [Colors.amber.shade200, Colors.amber.shade400, Colors.amber.shade600],
  begin: Alignment.topRight,
);

ButtonStyle buttonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.white),
  elevation: MaterialStateProperty.all(5),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      side: BorderSide.none,
    ),
  ),
);

TextStyle myTextStyle = const TextStyle(
  color: Colors.white,
  fontSize: 30,
  fontWeight: FontWeight.w400,
);
