// ignore_for_file: must_be_immutable

part of 'my_library_bloc.dart';

@immutable
abstract class MyLibraryEvent extends Equatable {}

class MyLibraryInitialEvent extends MyLibraryEvent {
  @override
  List<Object?> get props => [];
}
