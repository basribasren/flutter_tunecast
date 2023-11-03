import '../search_result_playlist_page/widgets/gridlanguage_item_widget.dart';
import 'bloc/search_result_playlist_bloc.dart';
import 'models/gridlanguage_item_model.dart';
import 'models/search_result_playlist_model.dart';
import 'package:basri_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchResultPlaylistPage extends StatefulWidget {
  @override
  _SearchResultPlaylistPageState createState() =>
      _SearchResultPlaylistPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultPlaylistBloc>(
      create: (context) => SearchResultPlaylistBloc(SearchResultPlaylistState(
        searchResultPlaylistModelObj: SearchResultPlaylistModel(),
      ))
        ..add(SearchResultPlaylistInitialEvent()),
      child: SearchResultPlaylistPage(),
    );
  }
}

class _SearchResultPlaylistPageState extends State<SearchResultPlaylistPage>
    with AutomaticKeepAliveClientMixin<SearchResultPlaylistPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: AppDecoration.fillWhiteA700,
                margin: getMargin(
                  left: 24,
                  top: 24,
                  right: 24,
                ),
                child: BlocSelector<SearchResultPlaylistBloc,
                    SearchResultPlaylistState, SearchResultPlaylistModel?>(
                  selector: (state) => state.searchResultPlaylistModelObj,
                  builder: (context, searchResultPlaylistModelObj) {
                    return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(
                          249,
                        ),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(
                          12,
                        ),
                        crossAxisSpacing: getHorizontalSize(
                          12,
                        ),
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: searchResultPlaylistModelObj
                              ?.gridlanguageItemList.length ??
                          0,
                      itemBuilder: (context, index) {
                        GridlanguageItemModel model =
                            searchResultPlaylistModelObj
                                    ?.gridlanguageItemList[index] ??
                                GridlanguageItemModel();
                        return GridlanguageItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
