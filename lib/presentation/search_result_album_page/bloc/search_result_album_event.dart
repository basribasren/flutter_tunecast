// ignore_for_file: must_be_immutable

part of 'search_result_album_bloc.dart';

@immutable
abstract class SearchResultAlbumEvent extends Equatable {}

class SearchResultAlbumInitialEvent extends SearchResultAlbumEvent {
  @override
  List<Object?> get props => [];
}
