// ignore_for_file: must_be_immutable

part of 'popular_artists_bloc.dart';

@immutable
abstract class PopularArtistsEvent extends Equatable {}

class PopularArtistsInitialEvent extends PopularArtistsEvent {
  @override
  List<Object?> get props => [];
}
