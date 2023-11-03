// ignore_for_file: must_be_immutable

part of 'top_albums_global_bloc.dart';

class TopAlbumsGlobalState extends Equatable {
  TopAlbumsGlobalState({this.topAlbumsGlobalModelObj});

  TopAlbumsGlobalModel? topAlbumsGlobalModelObj;

  @override
  List<Object?> get props => [
        topAlbumsGlobalModelObj,
      ];
  TopAlbumsGlobalState copyWith(
      {TopAlbumsGlobalModel? topAlbumsGlobalModelObj}) {
    return TopAlbumsGlobalState(
      topAlbumsGlobalModelObj:
          topAlbumsGlobalModelObj ?? this.topAlbumsGlobalModelObj,
    );
  }
}
