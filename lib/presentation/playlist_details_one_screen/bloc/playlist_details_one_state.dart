// ignore_for_file: must_be_immutable

part of 'playlist_details_one_bloc.dart';

class PlaylistDetailsOneState extends Equatable {
  PlaylistDetailsOneState({this.playlistDetailsOneModelObj});

  PlaylistDetailsOneModel? playlistDetailsOneModelObj;

  @override
  List<Object?> get props => [
        playlistDetailsOneModelObj,
      ];
  PlaylistDetailsOneState copyWith(
      {PlaylistDetailsOneModel? playlistDetailsOneModelObj}) {
    return PlaylistDetailsOneState(
      playlistDetailsOneModelObj:
          playlistDetailsOneModelObj ?? this.playlistDetailsOneModelObj,
    );
  }
}
