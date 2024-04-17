import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_skeleton/core/services/authentication_service.dart';
import 'package:flutter_skeleton/modules/splash/bloc/splash_event.dart';
import 'package:flutter_skeleton/modules/splash/bloc/splash_state.dart';


class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final AuthenticationService _authService;

  SplashBloc(this._authService) : super(SplashInitial()) {
    on<InitializeApp>((event, emit) async {
      emit(SplashLoading());
      await Future.delayed(Duration(seconds: 3));  // Simulate some initial loading process
      var user = await _authService.authenticate();
      if (user != null) {
        emit(SplashScreenNavigatedToLogin());
      } else {
        emit(SplashScreenNavigatedToLogin());
      }
    });
  }
}
