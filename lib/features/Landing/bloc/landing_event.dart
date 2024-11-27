part of 'landing_bloc.dart';

@immutable
sealed class LandingEvent {}

class LandingInitialEvent extends LandingEvent {}

class LandingActionEvent extends LandingEvent {}

class RegisterWithOTPEvent extends LandingActionEvent {}

class LoginWithOTPEvent extends LandingActionEvent {}