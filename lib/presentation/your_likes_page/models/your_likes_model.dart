import 'package:equatable/equatable.dart';import 'yourlikes_item_model.dart';
// ignore: must_be_immutable
class YourLikesModel extends Equatable {YourLikesModel({this.yourlikesItemList = const []});

List<YourlikesItemModel> yourlikesItemList;

YourLikesModel copyWith({List<YourlikesItemModel>? yourlikesItemList}) { return YourLikesModel(
yourlikesItemList : yourlikesItemList ?? this.yourlikesItemList,
); } 
@override List<Object?> get props => [yourlikesItemList];
 }
