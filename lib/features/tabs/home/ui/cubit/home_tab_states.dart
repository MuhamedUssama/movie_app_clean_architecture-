abstract class HomeTabStates {}

class LoadingState extends HomeTabStates {}

class ErrorState extends HomeTabStates {
  String? message;
  ErrorState(this.message);
}

class SuccessState extends HomeTabStates {
  List<dynamic>? data;
  SuccessState(this.data);
}
