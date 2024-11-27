part of 'landing_bloc.dart';

@immutable
abstract class LandingState {}

class LandingInitialState extends LandingState{}

class LandingActionState extends LandingInitialState {}

class RegisterWithOTPState extends LandingActionState{}

class LoginWithOTPState extends LandingActionState{}