part of 'register_bloc.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

class RegisterActionState extends RegisterState {}

class RegisterSubmitState extends RegisterActionState{}