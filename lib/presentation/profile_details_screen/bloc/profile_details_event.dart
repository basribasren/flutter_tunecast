// ignore_for_file: must_be_immutable

part of 'profile_details_bloc.dart';

@immutable
abstract class ProfileDetailsEvent extends Equatable {}

class ProfileDetailsInitialEvent extends ProfileDetailsEvent {
  @override
  List<Object?> get props => [];
}
