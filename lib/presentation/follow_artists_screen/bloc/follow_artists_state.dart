// ignore_for_file: must_be_immutable

part of 'follow_artists_bloc.dart';

class FollowArtistsState extends Equatable {
  FollowArtistsState({this.followArtistsModelObj});

  FollowArtistsModel? followArtistsModelObj;

  @override
  List<Object?> get props => [
        followArtistsModelObj,
      ];
  FollowArtistsState copyWith({FollowArtistsModel? followArtistsModelObj}) {
    return FollowArtistsState(
      followArtistsModelObj:
          followArtistsModelObj ?? this.followArtistsModelObj,
    );
  }
}
