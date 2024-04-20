import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:ui/exemple1/model.dart';
import 'package:ui/exemple1/park_repository.dart';

part 'park_cubit_state.dart';

class ParkCubitCubit extends Cubit<ParkCubitState> {
  final ParkRepository parkRepository = ParkRepository();
  ParkCubitCubit() : super(ParkCubitInitial());
  void getPark() async {
    try {
      emit(ParkCubitLoading());
      final park = await parkRepository.getPark();
      emit(ParkCubitLoaded(park: park));
    } catch (e) {
      emit(ParkCubitFailed(error: e.toString()));
    }
  }
}
