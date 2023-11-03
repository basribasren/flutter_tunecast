// ignore_for_file: must_be_immutable

part of 'new_releases_bloc.dart';

@immutable
abstract class NewReleasesEvent extends Equatable {}

class NewReleasesInitialEvent extends NewReleasesEvent {
  @override
  List<Object?> get props => [];
}
