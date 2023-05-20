import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';
part 'navigation_bloc.freezed.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationInitialState()) {
    on<NavigateEvent>(_handleNavigationEvent);
  }

  void _handleNavigationEvent(
    NavigateEvent event,
    Emitter<NavigationState> emit,
  ) {
    emit(const NavigationState.loaded());
  }
}
