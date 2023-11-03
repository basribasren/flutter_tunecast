// ignore_for_file: must_be_immutable

part of 'podcasters_bloc.dart';

@immutable
abstract class PodcastersEvent extends Equatable {}

class PodcastersInitialEvent extends PodcastersEvent {
  @override
  List<Object?> get props => [];
}
