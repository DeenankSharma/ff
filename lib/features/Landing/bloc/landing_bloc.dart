import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'landing_event.dart';
part 'landing_state.dart';

class LandingBloc extends Bloc<LandingEvent, LandingState> {
  LandingBloc() : super(LandingInitialState()){
    on<LandingActionEvent>(LandingActionevent);
    on<RegisterWithOTPEvent>(RegisterWithOTPevent);
    on<LoginWithOTPEvent>(LoginWithOTPevent);
  }

  FutureOr<void> LandingActionevent(LandingActionEvent event, Emitter<LandingState> emit) {
    emit(LandingActionState());
  }

  FutureOr<void> RegisterWithOTPevent(RegisterWithOTPEvent event, Emitter<LandingState> emit) {
    emit(RegisterWithOTPState());
  }

  FutureOr<void> LoginWithOTPevent(LoginWithOTPEvent event, Emitter<LandingState> emit) {
    emit(LoginWithOTPState());
  }
}
