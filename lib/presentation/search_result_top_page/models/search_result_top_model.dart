import 'package:equatable/equatable.dart';import 'listsongvalue_item_model.dart';
// ignore: must_be_immutable
class SearchResultTopModel extends Equatable {SearchResultTopModel({this.listsongvalueItemList = const []});

List<ListsongvalueItemModel> listsongvalueItemList;

SearchResultTopModel copyWith({List<ListsongvalueItemModel>? listsongvalueItemList}) { return SearchResultTopModel(
listsongvalueItemList : listsongvalueItemList ?? this.listsongvalueItemList,
); } 
@override List<Object?> get props => [listsongvalueItemList];
 }
