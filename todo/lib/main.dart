import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo/Bases/botonesLogin.dart';
import 'package:todo/services/firebase_service.dart';
void main() {
  runApp(const MyApp());
 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
       Scaffold(
          appBar: AppBar(
            title: const Text("Login"),
            titleSpacing: 100,
          ),
          body:Center(
            child: FutureBuilder(
              future: FirebaseService.firebaseinit(),
              builder: (context, snapshot) {
                if (snapshot.connectionState==ConnectionState.done) {
                  return Botones();
                }else{
                  return const CircularProgressIndicator();
                }
              },
            ),
          ),
          )
          );
  }
}
