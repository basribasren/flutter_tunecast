// ignore_for_file: must_be_immutable

part of 'lets_you_in_bloc.dart';

@immutable
abstract class LetsYouInEvent extends Equatable {}

class LetsYouInInitialEvent extends LetsYouInEvent {
  @override
  List<Object?> get props => [];
}

class FacebookAuthEvent extends LetsYouInEvent {
  FacebookAuthEvent();

  @override
  List<Object?> get props => [];
}

class GoogleAuthEvent extends LetsYouInEvent {
  GoogleAuthEvent();

  @override
  List<Object?> get props => [];
}
