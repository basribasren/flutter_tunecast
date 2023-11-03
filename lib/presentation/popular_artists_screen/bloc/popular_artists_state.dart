// ignore_for_file: must_be_immutable

part of 'popular_artists_bloc.dart';

class PopularArtistsState extends Equatable {
  PopularArtistsState({this.popularArtistsModelObj});

  PopularArtistsModel? popularArtistsModelObj;

  @override
  List<Object?> get props => [
        popularArtistsModelObj,
      ];
  PopularArtistsState copyWith({PopularArtistsModel? popularArtistsModelObj}) {
    return PopularArtistsState(
      popularArtistsModelObj:
          popularArtistsModelObj ?? this.popularArtistsModelObj,
    );
  }
}
