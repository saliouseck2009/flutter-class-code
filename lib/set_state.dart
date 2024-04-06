import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Counter:', style: TextStyle(fontSize: 20)),
            Text('$_counter', style: const TextStyle(fontSize: 40)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: CounterApp()));
}
