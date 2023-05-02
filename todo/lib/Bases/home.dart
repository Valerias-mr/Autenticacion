import 'package:flutter/material.dart';

class Inicial extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Home",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blue, 
            fontStyle: FontStyle.italic, 
            decoration: TextDecoration.none // quita el subrayado
          ),
        ),
      ),
      color: Colors.white,
      width: 50,
      height: 50,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 10),
    );
  }
}