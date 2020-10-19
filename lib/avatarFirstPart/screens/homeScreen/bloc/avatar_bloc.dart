import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'avatar_event.dart';
part 'avatar_state.dart';

class AvatarBloc extends Bloc<AvatarEvent, AvatarState> {
  AvatarBloc() : super(AvatarInitial());

  @override
  Stream<AvatarState> mapEventToState(
    AvatarEvent event,
  ) async* {
    if (event is AvatarLoadCharacters) {
      yield* _loadCharacters(event);
    }
  }

  Stream<AvatarState> _loadCharacters(AvatarLoadCharacters event) async* {
    yield AvatarLoading();
    await Future.delayed(Duration(seconds: 5));
    if (event.request) {
      yield AvatarLoaded();
    } else {
      yield AvatarFailure();
    }
  }
}
