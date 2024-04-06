import 'package:flutter/material.dart';

import 'color_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // initialRoute: '/',
      routes: {
        // "/": (context) => const Page1(),
        "/page2": (context) => const Page2(),
        "/page3": (context) => const Page3(),
        "/page4": (context) => const Page4(),
      },
      theme: ThemeData(
          colorScheme: lightColorScheme,
          useMaterial3: true,
          textTheme: const TextTheme(titleLarge: TextStyle(fontSize: 24))
          // appBarTheme:
          //     const AppBarTheme(color: Colors.amber, centerTitle: false),
          // elevatedButtonTheme: ElevatedButtonThemeData(
          //     style: ElevatedButton.styleFrom(
          //         shape: const RoundedRectangleBorder(),
          //         backgroundColor: Colors.orange,
          //         foregroundColor: Colors.white)
          //         )
          ),

      home: const Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("page 1"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Page 1",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    "/page2",
                    arguments: Route1Args,
                  );
                },
                child: const Text("Go to page 2"))
          ],
        ),
      ),
    );
  }
}

class Route1Args {
  final int id;
  final String nom;

  Route1Args({required this.id, required this.nom});
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("page 2"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Page 2 ",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/page3");
                },
                child: const Text("Go to page 3")),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Back"))
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("page 3"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Page 3",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.error),
                onPressed: () {
                  Navigator.pushNamed(context, "/page4");
                },
                child: const Text("Go to page 4"))
          ],
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("page 4"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Page 4",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
                child: const Text("Go to page 1")),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/page2'));
                },
                child: const Text("Go to page 2"))
          ],
        ),
      ),
    );
  }
}
