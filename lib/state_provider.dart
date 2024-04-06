import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }
}

class Runner with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
        ChangeNotifierProvider(create: (_) => Runner()),
      ],
      child: const MaterialApp(
        title: 'Counter App',
        home: CounterScreen(),
      ),
    );
  }
}

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Counter:', style: TextStyle(fontSize: 20)),
            Text('${counter.count}', style: const TextStyle(fontSize: 40)),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter.decrement();
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 16,
          ),
          FloatingActionButton(
            onPressed: () {
              counter.increment();
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const CounterApp());
}
