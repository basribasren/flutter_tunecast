import 'package:equatable/equatable.dart';import 'listmap_item_model.dart';
// ignore: must_be_immutable
class ForgotPasswordModel extends Equatable {ForgotPasswordModel({this.listmapItemList = const []});

List<ListmapItemModel> listmapItemList;

ForgotPasswordModel copyWith({List<ListmapItemModel>? listmapItemList}) { return ForgotPasswordModel(
listmapItemList : listmapItemList ?? this.listmapItemList,
); } 
@override List<Object?> get props => [listmapItemList];
 }
