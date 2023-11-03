// ignore_for_file: must_be_immutable

part of 'followers_details_bloc.dart';

@immutable
abstract class FollowersDetailsEvent extends Equatable {}

class FollowersDetailsInitialEvent extends FollowersDetailsEvent {
  @override
  List<Object?> get props => [];
}
