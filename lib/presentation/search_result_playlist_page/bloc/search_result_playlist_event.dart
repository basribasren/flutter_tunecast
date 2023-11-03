// ignore_for_file: must_be_immutable

part of 'search_result_playlist_bloc.dart';

@immutable
abstract class SearchResultPlaylistEvent extends Equatable {}

class SearchResultPlaylistInitialEvent extends SearchResultPlaylistEvent {
  @override
  List<Object?> get props => [];
}
