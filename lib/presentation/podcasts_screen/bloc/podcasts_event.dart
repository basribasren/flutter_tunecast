// ignore_for_file: must_be_immutable

part of 'podcasts_bloc.dart';

@immutable
abstract class PodcastsEvent extends Equatable {}

class PodcastsInitialEvent extends PodcastsEvent {
  @override
  List<Object?> get props => [];
}
