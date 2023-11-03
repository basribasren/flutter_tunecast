// ignore_for_file: must_be_immutable

part of 'album_details_bloc.dart';

@immutable
abstract class AlbumDetailsEvent extends Equatable {}

class AlbumDetailsInitialEvent extends AlbumDetailsEvent {
  @override
  List<Object?> get props => [];
}
