// ignore_for_file: must_be_immutable

part of 'search_result_profile_tab_container_bloc.dart';

@immutable
abstract class SearchResultProfileTabContainerEvent extends Equatable {}

class SearchResultProfileTabContainerInitialEvent
    extends SearchResultProfileTabContainerEvent {
  @override
  List<Object?> get props => [];
}
