abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoaded extends HomeState {
  final int selectedIndex;

  HomeLoaded({required this.selectedIndex});
}

class HomeError extends HomeState {
  final String message;
  HomeError(this.message);
}
