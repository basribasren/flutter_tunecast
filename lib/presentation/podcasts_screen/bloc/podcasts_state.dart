// ignore_for_file: must_be_immutable

part of 'podcasts_bloc.dart';

class PodcastsState extends Equatable {
  PodcastsState({this.podcastsModelObj});

  PodcastsModel? podcastsModelObj;

  @override
  List<Object?> get props => [
        podcastsModelObj,
      ];
  PodcastsState copyWith({PodcastsModel? podcastsModelObj}) {
    return PodcastsState(
      podcastsModelObj: podcastsModelObj ?? this.podcastsModelObj,
    );
  }
}
