// ignore_for_file: must_be_immutable

part of 'playback_bloc.dart';

@immutable
abstract class PlaybackEvent extends Equatable {}

class PlaybackInitialEvent extends PlaybackEvent {
  @override
  List<Object?> get props => [];
}

class PlaybackItemEvent extends PlaybackEvent {
  PlaybackItemEvent({
    required this.index,
    this.isSelectedSwitch,
  });

  int index;

  bool? isSelectedSwitch;

  @override
  List<Object?> get props => [
        index,
        isSelectedSwitch,
      ];
}
