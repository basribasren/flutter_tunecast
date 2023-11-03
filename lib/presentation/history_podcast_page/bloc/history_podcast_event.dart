// ignore_for_file: must_be_immutable

part of 'history_podcast_bloc.dart';

@immutable
abstract class HistoryPodcastEvent extends Equatable {}

class HistoryPodcastInitialEvent extends HistoryPodcastEvent {
  @override
  List<Object?> get props => [];
}
