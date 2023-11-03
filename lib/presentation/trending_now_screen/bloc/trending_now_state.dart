// ignore_for_file: must_be_immutable

part of 'trending_now_bloc.dart';

class TrendingNowState extends Equatable {
  TrendingNowState({this.trendingNowModelObj});

  TrendingNowModel? trendingNowModelObj;

  @override
  List<Object?> get props => [
        trendingNowModelObj,
      ];
  TrendingNowState copyWith({TrendingNowModel? trendingNowModelObj}) {
    return TrendingNowState(
      trendingNowModelObj: trendingNowModelObj ?? this.trendingNowModelObj,
    );
  }
}
