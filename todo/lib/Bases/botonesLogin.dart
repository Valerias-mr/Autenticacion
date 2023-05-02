import 'package:flutter/material.dart';
import 'package:todo/Bases/home.dart';

class Botones extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Botones();
  }
}

class _Botones extends State<Botones> {
  bool onPressed = false;

  void onPressedIcon() {
    print("Test $onPressed");
    setState(() {
       onPressed = !onPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => Inicial())));
            },
            child: Text ("Google")
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => Inicial())));
            },
            child: Text ("Facebook")
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => Inicial())));
            },
            child: Text ("Twitter")
          ),
        ],
      ),
    );
  }
}