// ignore_for_file: must_be_immutable

part of 'history_podcast_tab_container_bloc.dart';

@immutable
abstract class HistoryPodcastTabContainerEvent extends Equatable {}

class HistoryPodcastTabContainerInitialEvent
    extends HistoryPodcastTabContainerEvent {
  @override
  List<Object?> get props => [];
}
