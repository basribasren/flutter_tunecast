// ignore_for_file: must_be_immutable

part of 'followers_details_tab_container_bloc.dart';

@immutable
abstract class FollowersDetailsTabContainerEvent extends Equatable {}

class FollowersDetailsTabContainerInitialEvent
    extends FollowersDetailsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
