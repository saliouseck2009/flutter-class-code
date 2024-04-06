import 'package:flutter/material.dart';

void main() {
  return runApp(const MaterialApp(
    home: Counter(),
  ));
}

class Counter extends StatefulWidget {
  const Counter({super.key});
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  late int counter;

  @override
  void initState() {
    counter = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test stateful widget"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: Theme.of(context).textTheme.titleLarge,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });

          print(counter);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
