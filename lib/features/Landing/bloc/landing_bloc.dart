import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'landing_event.dart';
part 'landing_state.dart';

class LandingBloc extends Bloc<LandingEvent, LandingState> {
  LandingBloc() : super(LandingInitial()) {
    on<LandingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
