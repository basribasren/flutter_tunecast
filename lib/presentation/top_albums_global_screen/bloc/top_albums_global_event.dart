// ignore_for_file: must_be_immutable

part of 'top_albums_global_bloc.dart';

@immutable
abstract class TopAlbumsGlobalEvent extends Equatable {}

class TopAlbumsGlobalInitialEvent extends TopAlbumsGlobalEvent {
  @override
  List<Object?> get props => [];
}
