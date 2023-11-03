// ignore_for_file: must_be_immutable

part of 'podcasters_bloc.dart';

class PodcastersState extends Equatable {
  PodcastersState({this.podcastersModelObj});

  PodcastersModel? podcastersModelObj;

  @override
  List<Object?> get props => [
        podcastersModelObj,
      ];
  PodcastersState copyWith({PodcastersModel? podcastersModelObj}) {
    return PodcastersState(
      podcastersModelObj: podcastersModelObj ?? this.podcastersModelObj,
    );
  }
}
