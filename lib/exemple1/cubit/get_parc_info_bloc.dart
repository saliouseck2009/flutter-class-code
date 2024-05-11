import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../park_repository.dart';
import 'park_cubit_cubit.dart';
import 'park_event.dart';

class GetParcInfoBloc extends Bloc<ParkEvent, ParkCubitState> {
  final ParkRepository parkRepository = ParkRepository();
  GetParcInfoBloc() : super(ParkCubitInitial()) {
    on<GetParkInfo>(_getParkInfo);
  }

  _getParkInfo(GetParkInfo event, Emitter<ParkCubitState> emit) async {
    try {
      emit(ParkCubitLoading());
      final park = await parkRepository.getPark();
      emit(ParkCubitLoaded(park: park));
    } catch (e) {
      emit(ParkCubitFailed(error: e.toString()));
    }
  }
}
