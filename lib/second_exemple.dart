import 'package:flutter/material.dart';

class SecondExemple extends StatelessWidget {
  const SecondExemple({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: ListView(
              children: const [
                CardWidget(
                  title: "Nicky Larsonne",
                  subtitle: "The Jetpack Hero",
                ),
                CardWidget(
                  title: "Nicky Larsonne",
                  subtitle: "The Jetpack Hero",
                ),
                CardWidget(
                  title: "Nicky Larsonne",
                  subtitle: "The Jetpack Hero",
                ),
                CardWidget(
                  title: "Nicky Larsonne",
                  subtitle: "The Jetpack Hero",
                ),
                CardWidget(
                  title: "Nicky Larsonne",
                  subtitle: "The Jetpack Hero",
                ),
                CardWidget(
                  title: "Nicky Larsonne",
                  subtitle: "The Jetpack Hero",
                ),
                CardWidget(
                  title: "Nicky Larsonne",
                  subtitle: "The Jetpack Hero",
                ),
                CardWidget(
                  title: "Nicky Larsonne",
                  subtitle: "The Jetpack Hero",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const CardWidget({
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(
                0.0,
                2.0,
              ),
              blurRadius: 2.0,
              spreadRadius: 2.0,
            ), //BoxShadow
            // BoxShadow(
            //   color: Colors.white,
            //   offset: Offset(0.0, 0.0),
            //   blurRadius: 0.0,
            //   spreadRadius: 0.0,
            // ), //
          ],
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffE1E4D5)),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                subtitle,
              ),
            ],
          ),
        ),
        SizedBox(
            height: 75,
            width: 75,
            child: Image.asset("assets/image/web-design.png"))
      ]),
    );
  }
}
