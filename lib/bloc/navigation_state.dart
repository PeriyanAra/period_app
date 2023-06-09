part of 'navigation_bloc.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState.initial() = NavigationInitialState;

  const factory NavigationState.setUpBirthday() = NavigationSetUpBirthDayState;
}
