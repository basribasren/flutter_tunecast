// ignore_for_file: must_be_immutable

part of 'profile_details_one_bloc.dart';

@immutable
abstract class ProfileDetailsOneEvent extends Equatable {}

class ProfileDetailsOneInitialEvent extends ProfileDetailsOneEvent {
  @override
  List<Object?> get props => [];
}
