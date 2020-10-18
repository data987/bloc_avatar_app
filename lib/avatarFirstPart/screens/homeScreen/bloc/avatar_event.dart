part of 'avatar_bloc.dart';

@immutable
abstract class AvatarEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AvatarLoadCharacters extends AvatarEvent {
  AvatarLoadCharacters({@required this.request});
  final bool request;

  @override
  List<Object> get props => [request];
}
