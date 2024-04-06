import 'package:flutter/material.dart';

class TestTheme extends StatelessWidget {
  const TestTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.amber)),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Text("Home Page",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
            actions: [
              Container(
                  margin: const EdgeInsets.only(right: 16),
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Colors.black12, shape: BoxShape.circle),
                  child: const Icon(Icons.person))
            ],
          ),
        ));
  }
}
