// ignore_for_file: must_be_immutable

part of 'new_playlist_bloc.dart';

class NewPlaylistState extends Equatable {
  NewPlaylistState({
    this.statusFillTypeDefaultController,
    this.statusFillTypeDefaultOneController,
    this.selectedDropDownValue,
    this.newPlaylistModelObj,
  });

  TextEditingController? statusFillTypeDefaultController;

  TextEditingController? statusFillTypeDefaultOneController;

  SelectionPopupModel? selectedDropDownValue;

  NewPlaylistModel? newPlaylistModelObj;

  @override
  List<Object?> get props => [
        statusFillTypeDefaultController,
        statusFillTypeDefaultOneController,
        selectedDropDownValue,
        newPlaylistModelObj,
      ];
  NewPlaylistState copyWith({
    TextEditingController? statusFillTypeDefaultController,
    TextEditingController? statusFillTypeDefaultOneController,
    SelectionPopupModel? selectedDropDownValue,
    NewPlaylistModel? newPlaylistModelObj,
  }) {
    return NewPlaylistState(
      statusFillTypeDefaultController: statusFillTypeDefaultController ??
          this.statusFillTypeDefaultController,
      statusFillTypeDefaultOneController: statusFillTypeDefaultOneController ??
          this.statusFillTypeDefaultOneController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      newPlaylistModelObj: newPlaylistModelObj ?? this.newPlaylistModelObj,
    );
  }
}
