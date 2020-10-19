part of 'avatar_bloc.dart';

@immutable
abstract class AvatarState extends Equatable {
  @override
  List<Object> get props => [];
}

class AvatarInitial extends AvatarState {}

class AvatarLoading extends AvatarState {}

class AvatarLoaded extends AvatarState {}

class AvatarFailure extends AvatarState {}
