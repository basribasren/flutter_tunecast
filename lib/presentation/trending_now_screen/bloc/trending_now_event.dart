// ignore_for_file: must_be_immutable

part of 'trending_now_bloc.dart';

@immutable
abstract class TrendingNowEvent extends Equatable {}

class TrendingNowInitialEvent extends TrendingNowEvent {
  @override
  List<Object?> get props => [];
}
