import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/exemple1/cubit/get_parc_info_bloc.dart';
import 'package:ui/exemple1/cubit/park_cubit_cubit.dart';
import 'package:ui/exemple1/cubit/park_event.dart';
import 'package:ui/exemple2/cubit/get_heroes_cubit.dart';
import 'package:ui/exemple2/hero_repository.dart';
import 'package:ui/first_exemple.dart';
import 'package:ui/fourth_exemple.dart';
import 'package:ui/second_exemple.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => ParkCubitCubit(),
      ),
      BlocProvider(
        create: (context) => GetParcInfoBloc(),
      ),
      BlocProvider(
        create: (context) => GetHeroesCubit(HeroRepository()),
      ),
    ],
    child: const MaterialApp(home: HomePage()),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<GetParcInfoBloc>().add(GetParkInfo());
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
                  BlocProvider.of<GetHeroesCubit>(context).getHeroes();
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
