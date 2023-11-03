// ignore_for_file: must_be_immutable

part of 'albums_bloc.dart';

@immutable
abstract class AlbumsEvent extends Equatable {}

class AlbumsInitialEvent extends AlbumsEvent {
  @override
  List<Object?> get props => [];
}
