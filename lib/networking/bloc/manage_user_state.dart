part of 'manage_user_bloc.dart';

sealed class ManageUserState extends Equatable {
  const ManageUserState();
  
  @override
  List<Object> get props => [];
}

final class ManageUserInitial extends ManageUserState {}
