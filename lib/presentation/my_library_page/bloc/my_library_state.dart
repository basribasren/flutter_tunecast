// ignore_for_file: must_be_immutable

part of 'my_library_bloc.dart';

class MyLibraryState extends Equatable {
  MyLibraryState({this.myLibraryModelObj});

  MyLibraryModel? myLibraryModelObj;

  @override
  List<Object?> get props => [
        myLibraryModelObj,
      ];
  MyLibraryState copyWith({MyLibraryModel? myLibraryModelObj}) {
    return MyLibraryState(
      myLibraryModelObj: myLibraryModelObj ?? this.myLibraryModelObj,
    );
  }
}
