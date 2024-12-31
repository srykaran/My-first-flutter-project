import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/gradient_container.dart';
void main(){
  runApp(
  const MaterialApp(
      home: Scaffold(
        body: GradientContainer( Colors.deepPurple,  Colors.lightBlue,
      ),
    ),
  ),
  );
}

