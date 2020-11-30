import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> lista_imagens = [
    "assets/apple.jpg",
    "assets/banana.jpg",
    "assets/grape.jpg",
    "assets/orange.jpg",
    "assets/strawberry.jpg",
    "assets/watermelon.jpg"
  ];

  int i = 0;
  int j = 1;
  int l = 2;
  bool parar = true;
  Future sleep1() {
    return new Future.delayed(const Duration(seconds: 1), () => "1");
  }

  girar() {
    parar = !parar;
    while (parar) {
      i++;
      if (i == 5) {
        i = 0;
      }
      sleep(const Duration(seconds: 1));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Game Fruit')),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    lista_imagens[3],
                    fit: BoxFit.cover,
                    width: 100,
                  ),
                  Image.asset(
                    lista_imagens[j],
                    fit: BoxFit.cover,
                    width: 100,
                  ),
                  Image.asset(
                    lista_imagens[l],
                    fit: BoxFit.cover,
                    width: 100,
                  ),
                ],
              ),
              Center(
                child: RaisedButton(
                    child: Text('Parar'), onPressed: () => girar()),
              )
            ],
          ),
          height: double.infinity,
        ),
      ),
    );
  }
}
