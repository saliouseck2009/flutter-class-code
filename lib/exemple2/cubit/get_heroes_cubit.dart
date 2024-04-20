import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:ui/exemple2/hero.dart';
import 'package:ui/exemple2/hero_repository.dart';

part 'get_heroes_state.dart';

class GetHeroesCubit extends Cubit<GetHeroesState> {
  final HeroRepository heroRepository;
  GetHeroesCubit(this.heroRepository) : super(GetHeroesInitial());
  getHeroes() async {
    emit(GetHeroesLoading());
    try {
      final heroes = await heroRepository.getHeroes();
      emit(GetHeroesLoaded(heroes: heroes));
    } catch (e) {
      emit(GetHeroesFailed(error: e.toString()));
    }
  }
}
