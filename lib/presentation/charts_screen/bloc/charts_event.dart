// ignore_for_file: must_be_immutable

part of 'charts_bloc.dart';

@immutable
abstract class ChartsEvent extends Equatable {}

class ChartsInitialEvent extends ChartsEvent {
  @override
  List<Object?> get props => [];
}
