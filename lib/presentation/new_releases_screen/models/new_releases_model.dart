import 'package:equatable/equatable.dart';import 'newreleases_item_model.dart';
// ignore: must_be_immutable
class NewReleasesModel extends Equatable {NewReleasesModel({this.newreleasesItemList = const []});

List<NewreleasesItemModel> newreleasesItemList;

NewReleasesModel copyWith({List<NewreleasesItemModel>? newreleasesItemList}) { return NewReleasesModel(
newreleasesItemList : newreleasesItemList ?? this.newreleasesItemList,
); } 
@override List<Object?> get props => [newreleasesItemList];
 }
