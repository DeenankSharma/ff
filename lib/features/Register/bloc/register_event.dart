part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent {}

class RegisterInitialEvent extends RegisterEvent {}

class RegisterActionEvent extends RegisterEvent{}