import 'package:equatable/equatable.dart';import 'listname2_item_model.dart';
// ignore: must_be_immutable
class SearchResultProfileModel extends Equatable {SearchResultProfileModel({this.listname2ItemList = const []});

List<Listname2ItemModel> listname2ItemList;

SearchResultProfileModel copyWith({List<Listname2ItemModel>? listname2ItemList}) { return SearchResultProfileModel(
listname2ItemList : listname2ItemList ?? this.listname2ItemList,
); } 
@override List<Object?> get props => [listname2ItemList];
 }
