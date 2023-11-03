// ignore_for_file: must_be_immutable

part of 'search_result_profile_bloc.dart';

@immutable
abstract class SearchResultProfileEvent extends Equatable {}

class SearchResultProfileInitialEvent extends SearchResultProfileEvent {
  @override
  List<Object?> get props => [];
}
