import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import 'app.dart';

class BlocDelegate extends BlocObserver {
  var logger = Logger(
      printer: PrettyPrinter(
    colors: false,
    errorMethodCount: 1,
    printEmojis: true,
    printTime: true,
    lineLength: 80,
    methodCount: 0,
  ));

  @override
  void onEvent(Bloc bloc, Object event) {
    logger.i('event: $event');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    logger.v({
      'currentState': '${transition.currentState}',
      'event': '${transition.event}',
      'nextState': '${transition.nextState}'
    });
    super.onTransition(bloc, transition);
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    logger.e(error);
    super.onError(cubit, error, stackTrace);
  }
}

void main() {
  Bloc.observer = BlocDelegate();
  runApp(MyApp());
}
