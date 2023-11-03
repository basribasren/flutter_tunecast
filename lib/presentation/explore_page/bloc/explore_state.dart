// ignore_for_file: must_be_immutable

part of 'explore_bloc.dart';

class ExploreState extends Equatable {
  ExploreState({
    this.searchBarController,
    this.exploreModelObj,
  });

  TextEditingController? searchBarController;

  ExploreModel? exploreModelObj;

  @override
  List<Object?> get props => [
        searchBarController,
        exploreModelObj,
      ];
  ExploreState copyWith({
    TextEditingController? searchBarController,
    ExploreModel? exploreModelObj,
  }) {
    return ExploreState(
      searchBarController: searchBarController ?? this.searchBarController,
      exploreModelObj: exploreModelObj ?? this.exploreModelObj,
    );
  }
}
