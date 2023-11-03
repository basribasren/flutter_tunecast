// ignore_for_file: must_be_immutable

part of 'artists_bloc.dart';

class ArtistsState extends Equatable {
  ArtistsState({this.artistsModelObj});

  ArtistsModel? artistsModelObj;

  @override
  List<Object?> get props => [
        artistsModelObj,
      ];
  ArtistsState copyWith({ArtistsModel? artistsModelObj}) {
    return ArtistsState(
      artistsModelObj: artistsModelObj ?? this.artistsModelObj,
    );
  }
}
