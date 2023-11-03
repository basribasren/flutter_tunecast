// ignore_for_file: must_be_immutable

part of 'your_likes_bloc.dart';

@immutable
abstract class YourLikesEvent extends Equatable {}

class YourLikesInitialEvent extends YourLikesEvent {
  @override
  List<Object?> get props => [];
}
