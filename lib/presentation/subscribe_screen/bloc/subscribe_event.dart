// ignore_for_file: must_be_immutable

part of 'subscribe_bloc.dart';

@immutable
abstract class SubscribeEvent extends Equatable {}

class SubscribeInitialEvent extends SubscribeEvent {
  @override
  List<Object?> get props => [];
}
