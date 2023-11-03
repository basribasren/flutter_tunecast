// ignore_for_file: must_be_immutable

part of 'podcasts_notifications_bloc.dart';

@immutable
abstract class PodcastsNotificationsEvent extends Equatable {}

class PodcastsNotificationsInitialEvent extends PodcastsNotificationsEvent {
  @override
  List<Object?> get props => [];
}
