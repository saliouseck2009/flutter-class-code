import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        body: SizedBox(
            child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const TextFieldSection(),
            const SizedBox(
              height: 16,
            ),
            const CardSection(),
            const SizedBox(
              height: 16,
            ),
            const CategorySection(),
            const SizedBox(
              height: 16,
            ),
            Divider(
              color: Colors.grey.shade200,
              thickness: 8,
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Container(
                    width: 6,
                    height: 35,
                    color: const Color(0xff586BF2),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Curriculum",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
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
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color(0xff586BF2),
            Color(0xff4352B4),
          ],
          tileMode: TileMode.mirror,
        ),
        borderRadius: BorderRadius.circular(16),
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

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CategoryItem(
          icon: Icons.warning,
          color: Colors.green,
          title: "New",
        ),
        CategoryItem(
          icon: Icons.warning,
          color: Colors.orange,
          title: "New",
        ),
        CategoryItem(
          icon: Icons.access_time_filled_sharp,
          color: Colors.red,
          title: "New",
        ),
        CategoryItem(
          icon: Icons.warning,
          color: Colors.yellow,
          title: "New",
        ),
        CategoryItem(
          icon: Icons.warning,
          color: Colors.blue,
          title: "New",
        )
      ],
    );
  }
}

class CategoryItem extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  const CategoryItem(
      {super.key,
      required this.color,
      required this.icon,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(6)),
          padding: const EdgeInsets.all(8),
          child: Icon(icon),
        ),
        Text(title)
      ],
    );
  }
}
