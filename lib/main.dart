import 'package:flutter/material.dart';
import 'package:ui/first_exemple.dart';
import 'package:ui/fourth_exemple.dart';
import 'package:ui/second_exemple.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FirstExemple()),
                  );
                },
                child: const Text('Page 1'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondExemple()),
                  );
                },
                child: const Text('Page 2'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FourthExemple()),
                  );
                },
                child: const Text('Page 4'),
              ),
              const SizedBox(
                height: 20,
              ),
            ]),
      ),
    );
  }
}
