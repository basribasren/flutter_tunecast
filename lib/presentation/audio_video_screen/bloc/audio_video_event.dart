// ignore_for_file: must_be_immutable

part of 'audio_video_bloc.dart';

@immutable
abstract class AudioVideoEvent extends Equatable {}

class AudioVideoInitialEvent extends AudioVideoEvent {
  @override
  List<Object?> get props => [];
}

///event for change switch
class ChangeSwitchEvent extends AudioVideoEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change switch
class ChangeSwitch1Event extends AudioVideoEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
