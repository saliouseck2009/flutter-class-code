import 'package:flutter/material.dart';

class FourthExemple extends StatelessWidget {
  const FourthExemple({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        body: const SizedBox(
            child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            TextFieldSection(),
            SizedBox(
              height: 16,
            ),
            CardSection(),
          ],
        )),
      ),
    );
  }
}

class TextFieldSection extends StatelessWidget {
  const TextFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10)),
            hintText: "Search",
            prefixIcon: const Icon(Icons.search),
            suffixIcon: const Icon(Icons.mic_none_rounded),
            fillColor: Colors.grey.shade200,
            filled: true),
      ),
    );
  }
}

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.blue,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Jing A studio",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Tell me your dream",
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Invite friends to sell 1000 red packets",
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder()),
            child: const Text(
              "Details",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
