import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/exemple2/cubit/get_heroes_cubit.dart';
import 'package:ui/exemple2/hero.dart' as HeroModel;

class SecondExemple extends StatelessWidget {
  const SecondExemple({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Exemple"),
      ),
      body: SafeArea(
        child: BlocBuilder<GetHeroesCubit, GetHeroesState>(
          builder: (context, state) {
            if (state is GetHeroesInitial || state is GetHeroesLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is GetHeroesLoaded) {
              return PageContent(
                heroes: state.heroes,
              );
            } else if (state is GetHeroesFailed) {
              return Center(child: Text(state.error));
            } else {
              return const Center(
                child: Text("Data not availaible"),
              );
            }
          },
        ),
      ),
    );
  }
}

class PageContent extends StatelessWidget {
  final List<HeroModel.Hero> heroes;
  const PageContent({
    super.key,
    required this.heroes,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          itemCount: heroes.length,
          itemBuilder: (context, index) {
            return CardWidget(
              title: heroes[index].name,
              subtitle: heroes[index].film,
            );
          },
        ));
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
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    subtitle,
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 30,
                width: 30,
                child: Image.asset("assets/image/web-design.png"))
          ]),
    );
  }
}
