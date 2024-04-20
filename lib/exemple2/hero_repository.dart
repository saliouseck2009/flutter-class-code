import 'package:ui/exemple2/hero.dart';

class HeroRepository {
  Future<List<Hero>> getHeroes() async {
    await Future.delayed(const Duration(seconds: 3));
    return heroes;
  }
}

//create list of heroes with name and film
//return list of heroes
var heroes = [
  Hero(name: 'Superman', film: " Superman 2"),
  Hero(name: 'Batman', film: "Batman 2"),
  Hero(name: 'Spiderman', film: "Spiderman 2"),
  Hero(name: 'Ironman', film: "Ironman 2"),
  Hero(name: 'Hulk', film: "Hulk 2"),
  Hero(name: 'Thor', film: "Thor 2"),
  Hero(name: 'Veuve Noire', film: "Veuve Noire 2"),
  Hero(name: 'Captain America', film: "Captain America 2"),
  Hero(name: 'Hulk', film: "Hulk 2"),
  Hero(name: 'Thor', film: "Thor 2"),
  Hero(name: 'Veuve Noire', film: "Veuve Noire 2"),
  Hero(name: 'Captain America', film: "Captain America 2"),
  Hero(name: 'Hulk', film: "Hulk 2"),
  Hero(name: 'Thor', film: "Thor 2"),
  Hero(name: 'Veuve Noire', film: "Veuve Noire 2"),
  Hero(name: 'Captain America', film: "Captain America 2"),
  Hero(name: 'Hulk', film: "Hulk 2"),
  Hero(name: 'Thor', film: "Thor 2"),
];
