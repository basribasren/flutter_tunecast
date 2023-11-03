// ignore_for_file: must_be_immutable

part of 'walkthrough_bloc.dart';

@immutable
abstract class WalkthroughEvent extends Equatable {}

class WalkthroughInitialEvent extends WalkthroughEvent {
  @override
  List<Object?> get props => [];
}
