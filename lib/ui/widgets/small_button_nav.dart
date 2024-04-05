import 'package:flutter/material.dart';

Widget SmallButtonNav(buttonColor) => Container(
  height: 48,
      width: 48,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11), color: buttonColor),
      child: const Icon(Icons.navigate_next_rounded, color: Colors.white, size: 48,),
    );
