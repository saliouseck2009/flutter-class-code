import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'manage_user_event.dart';
part 'manage_user_state.dart';

class ManageUserBloc extends Bloc<ManageUserEvent, ManageUserState> {
  ManageUserBloc() : super(ManageUserInitial()) {
    on<ManageUserEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
