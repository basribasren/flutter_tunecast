// ignore_for_file: must_be_immutable

part of 'podcast_episode_details_bloc.dart';

@immutable
abstract class PodcastEpisodeDetailsEvent extends Equatable {}

class PodcastEpisodeDetailsInitialEvent extends PodcastEpisodeDetailsEvent {
  @override
  List<Object?> get props => [];
}
