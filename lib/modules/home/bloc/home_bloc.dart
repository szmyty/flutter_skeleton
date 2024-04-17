import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<LoadHomeContent>((event, emit) {
      emit(HomeLoaded(selectedIndex: 0));  // Default to first tab
    });

    on<NavigateToTab>((event, emit) {
      emit(HomeLoaded(selectedIndex: event.index));
    });
  }
}
