part of 'get_heroes_cubit.dart';

@immutable
sealed class GetHeroesState extends Equatable {}

final class GetHeroesInitial extends GetHeroesState {
  @override
  List<Object?> get props => [];
}

final class GetHeroesLoading extends GetHeroesState {
  @override
  List<Object?> get props => [];
}

final class GetHeroesLoaded extends GetHeroesState {
  final List<Hero> heroes;

  GetHeroesLoaded({required this.heroes});

  @override
  List<Object?> get props => [heroes];
}

final class GetHeroesFailed extends GetHeroesState {
  final String error;

  GetHeroesFailed({required this.error});

  @override
  List<Object?> get props => [error];
}
