import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';
part 'navigation_bloc.freezed.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationInitialState()) {
    on<NavigateSetUpBirthDayEvent>(_handleNavigationEvent);
  }

  void _handleNavigationEvent(
    NavigateSetUpBirthDayEvent event,
    Emitter<NavigationState> emit,
  ) {
    emit(const NavigationState.setUpBirthday());

    emit(const NavigationState.initial());
  }
}
