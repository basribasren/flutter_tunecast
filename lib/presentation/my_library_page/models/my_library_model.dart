import 'package:equatable/equatable.dart';import 'mylibrary_item_model.dart';
// ignore: must_be_immutable
class MyLibraryModel extends Equatable {MyLibraryModel({this.mylibraryItemList = const []});

List<MylibraryItemModel> mylibraryItemList;

MyLibraryModel copyWith({List<MylibraryItemModel>? mylibraryItemList}) { return MyLibraryModel(
mylibraryItemList : mylibraryItemList ?? this.mylibraryItemList,
); } 
@override List<Object?> get props => [mylibraryItemList];
 }
