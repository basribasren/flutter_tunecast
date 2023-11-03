import 'package:equatable/equatable.dart';import 'listname1_item_model.dart';
// ignore: must_be_immutable
class SearchTypeKeywordModel extends Equatable {SearchTypeKeywordModel({this.listname1ItemList = const []});

List<Listname1ItemModel> listname1ItemList;

SearchTypeKeywordModel copyWith({List<Listname1ItemModel>? listname1ItemList}) { return SearchTypeKeywordModel(
listname1ItemList : listname1ItemList ?? this.listname1ItemList,
); } 
@override List<Object?> get props => [listname1ItemList];
 }
