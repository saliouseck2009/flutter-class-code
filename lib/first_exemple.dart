import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/exemple1/cubit/park_cubit_cubit.dart';
import 'package:ui/exemple1/model.dart';

class FirstExemple extends StatelessWidget {
  const FirstExemple({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Exemple"),
      ),
      body: BlocBuilder<ParkCubitCubit, ParkCubitState>(
        builder: (context, state) {
          if (state is ParkCubitInitial || state is ParkCubitLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ParkCubitLoaded) {
            return PageContent(
              park: state.park,
            );
          } else if (state is ParkCubitFailed) {
            return Center(child: Text(state.error));
          } else {
            return const Center(
              child: Text("Data not availaible"),
            );
          }
        },
      ),
    );
  }
}

class PageContent extends StatelessWidget {
  final ParkModel park;
  const PageContent({
    super.key,
    required this.park,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          const ImageSection(),
          LegendSection(
            location: park.location,
            rate: park.rating,
            title: park.name,
          ),
          const NavigationSection(),
          DescriptionSection(
            description: park.description,
          )
        ],
      ),
    );
  }
}

class DescriptionSection extends StatelessWidget {
  final String description;
  const DescriptionSection({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(textAlign: TextAlign.justify, description),
    );
  }
}

class LegendSection extends StatelessWidget {
  final String title;
  final String location;
  final int rate;
  const LegendSection({
    super.key,
    required this.title,
    required this.location,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              Text(
                location,
                style: const TextStyle(color: Colors.grey),
              )
            ]),
          ),
          const Icon(
            Icons.star,
            color: Colors.orangeAccent,
          ),
          Text(rate.toString()),
          const SizedBox(
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
