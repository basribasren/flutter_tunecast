// ignore_for_file: must_be_immutable

part of 'search_result_profile_tab_container_bloc.dart';

class SearchResultProfileTabContainerState extends Equatable {
  SearchResultProfileTabContainerState({
    this.filledSearchController,
    this.searchResultProfileTabContainerModelObj,
  });

  TextEditingController? filledSearchController;

  SearchResultProfileTabContainerModel? searchResultProfileTabContainerModelObj;

  @override
  List<Object?> get props => [
        filledSearchController,
        searchResultProfileTabContainerModelObj,
      ];
  SearchResultProfileTabContainerState copyWith({
    TextEditingController? filledSearchController,
    SearchResultProfileTabContainerModel?
        searchResultProfileTabContainerModelObj,
  }) {
    return SearchResultProfileTabContainerState(
      filledSearchController:
          filledSearchController ?? this.filledSearchController,
      searchResultProfileTabContainerModelObj:
          searchResultProfileTabContainerModelObj ??
              this.searchResultProfileTabContainerModelObj,
    );
  }
}
