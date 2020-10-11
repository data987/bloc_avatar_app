import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'avatar_event.dart';
part 'avatar_state.dart';

class AvatarBloc extends Bloc<AvatarEvent, AvatarState> {
  AvatarBloc() : super(AvatarInitial());

  @override
  Stream<AvatarState> mapEventToState(
    AvatarEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
