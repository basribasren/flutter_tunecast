// ignore_for_file: must_be_immutable

part of 'artist_search_result_bloc.dart';

@immutable
abstract class ArtistSearchResultEvent extends Equatable {}

class ArtistSearchResultInitialEvent extends ArtistSearchResultEvent {
  @override
  List<Object?> get props => [];
}
