// ignore_for_file: must_be_immutable

part of 'artists_tab_container_bloc.dart';

@immutable
abstract class ArtistsTabContainerEvent extends Equatable {}

class ArtistsTabContainerInitialEvent extends ArtistsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
