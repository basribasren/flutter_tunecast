// ignore_for_file: must_be_immutable

part of 'podcast_details_bloc.dart';

@immutable
abstract class PodcastDetailsEvent extends Equatable {}

class PodcastDetailsInitialEvent extends PodcastDetailsEvent {
  @override
  List<Object?> get props => [];
}
