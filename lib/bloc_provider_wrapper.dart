import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:period_app/bloc/navigation_bloc.dart';

class BlocProvideWrapper extends StatelessWidget {
  const BlocProvideWrapper({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: NavigationBloc(),
      child: child,
    );
  }
}
