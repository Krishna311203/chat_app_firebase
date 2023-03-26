import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
  focusedBorder: OutlineInputBorder(
      borderSide:
          BorderSide(color: Color.fromARGB(255, 22, 69, 107), width: 2)),
  enabledBorder:
      OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 2)),
  errorBorder:
      OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 2)),
);
