// ignore_for_file: must_be_immutable

part of 'search_result_podcast_bloc.dart';

@immutable
abstract class SearchResultPodcastEvent extends Equatable {}

class SearchResultPodcastInitialEvent extends SearchResultPodcastEvent {
  @override
  List<Object?> get props => [];
}
