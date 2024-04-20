import 'package:flutter/material.dart';

class FirstExemple extends StatelessWidget {
  const FirstExemple({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Exemple"),
      ),
      body: const SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            ImageSection(),
            LegendSection(),
            NavigationSection(),
            DescriptionSection()
          ],
        ),
      ),
    );
  }
}

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
          textAlign: TextAlign.justify,
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "),
    );
  }
}

class LegendSection extends StatelessWidget {
  const LegendSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Campagne Diomaye Président",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Text(
                "Dakar, Sénégal",
                style: TextStyle(color: Colors.grey),
              )
            ]),
          ),
          Icon(
            Icons.star,
            color: Colors.orangeAccent,
          ),
          Text("41"),
          SizedBox(
            width: 16,
          )
        ],
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/image/lake_.jpg");
  }
}

class LabelledIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  const LabelledIcon({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          label.toUpperCase(),
          style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}

class NavigationSection extends StatelessWidget {
  const NavigationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        LabelledIcon(
          icon: Icons.call,
          label: "Call",
        ),
        LabelledIcon(
          icon: Icons.navigation,
          label: "Route",
        ),
        LabelledIcon(
          icon: Icons.share,
          label: "share",
        ),
      ],
    );
  }
}
