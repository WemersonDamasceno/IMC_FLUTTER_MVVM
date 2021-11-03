import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imc_mvvm_flutter/src/app/home/home_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      title: "IMC",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      //initialRoute: '/',
      /*routes: {
        '/': (context) => const HomePage(),
      },*/
    );
  }
}
