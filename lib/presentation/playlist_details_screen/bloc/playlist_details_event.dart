// ignore_for_file: must_be_immutable

part of 'playlist_details_bloc.dart';

@immutable
abstract class PlaylistDetailsEvent extends Equatable {}

class PlaylistDetailsInitialEvent extends PlaylistDetailsEvent {
  @override
  List<Object?> get props => [];
}
