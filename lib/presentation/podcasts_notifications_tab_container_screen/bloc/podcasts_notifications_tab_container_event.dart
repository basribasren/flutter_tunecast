// ignore_for_file: must_be_immutable

part of 'podcasts_notifications_tab_container_bloc.dart';

@immutable
abstract class PodcastsNotificationsTabContainerEvent extends Equatable {}

class PodcastsNotificationsTabContainerInitialEvent
    extends PodcastsNotificationsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
