part of 'park_cubit_cubit.dart';

@immutable
sealed class ParkCubitState {}

final class ParkCubitInitial extends ParkCubitState {}

final class ParkCubitLoading extends ParkCubitState {}

final class ParkCubitLoaded extends ParkCubitState {
  final ParkModel park;

  ParkCubitLoaded({required this.park});
}

final class ParkCubitFailed extends ParkCubitState {
  final String error;

  ParkCubitFailed({required this.error});
}
