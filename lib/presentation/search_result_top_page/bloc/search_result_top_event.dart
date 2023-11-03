// ignore_for_file: must_be_immutable

part of 'search_result_top_bloc.dart';

@immutable
abstract class SearchResultTopEvent extends Equatable {}

class SearchResultTopInitialEvent extends SearchResultTopEvent {
  @override
  List<Object?> get props => [];
}
