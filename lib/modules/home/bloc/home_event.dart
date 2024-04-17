abstract class HomeEvent {}

class LoadHomeContent extends HomeEvent {}

class NavigateToTab extends HomeEvent {
  final int index;

  NavigateToTab(this.index);
}
