import 'package:flutter/material.dart';

import 'my_counter.dart';


void main() {
  runApp(Myhome());
}

class Myhome extends StatelessWidget {
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyAppCounter',
      debugShowCheckedModeBanner: false,
      home: MyAppCounter(),
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
    );
  }
}



