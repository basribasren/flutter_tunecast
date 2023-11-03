// ignore_for_file: must_be_immutable

part of 'new_playlist_bloc.dart';

@immutable
abstract class NewPlaylistEvent extends Equatable {}

class NewPlaylistInitialEvent extends NewPlaylistEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends NewPlaylistEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
