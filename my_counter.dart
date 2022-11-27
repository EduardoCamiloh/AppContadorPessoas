import 'package:flutter/material.dart';

class MyAppCounter extends StatefulWidget {
  MyAppCounter({super.key});

  @override
  State<MyAppCounter> createState() => _MyAppCounterState();
}

class _MyAppCounterState extends State<MyAppCounter> {
  int number = 0;

  bool get numberMaximo => number == 20;
  bool get numberMinimo => number == 0;

  void incremente() {
    setState(() {
      number++;
    });
  }

  void decrement() {
    setState(() {
      number--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Contador',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                50,
              ),
              color: Colors.indigo,
            ),
            child: Icon(
              Icons.person_add,
              color: Colors.white,
            ),
          ),
          Center(
            child: Text(
              'Numero de Pessoas',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            '$number',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: numberMinimo ? null : decrement,
                  child: Icon(
                    Icons.remove,
                  ),
                ),
                ElevatedButton(
                  onPressed: numberMaximo ? null : incremente,
                  child: Icon(
                    Icons.add,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            numberMaximo
                ? 'Desculpe mas o local está cheio!'
                : 'Ainda há espaço!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
