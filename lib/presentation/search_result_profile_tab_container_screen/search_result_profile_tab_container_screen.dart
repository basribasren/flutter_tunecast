import 'bloc/search_result_profile_tab_container_bloc.dart';
import 'models/search_result_profile_tab_container_model.dart';
import 'package:basri_s_application28/core/app_export.dart';
import 'package:basri_s_application28/presentation/artist_search_result_page/artist_search_result_page.dart';
import 'package:basri_s_application28/presentation/search_result_album_page/search_result_album_page.dart';
import 'package:basri_s_application28/presentation/search_result_playlist_page/search_result_playlist_page.dart';
import 'package:basri_s_application28/presentation/search_result_podcast_page/search_result_podcast_page.dart';
import 'package:basri_s_application28/presentation/search_result_profile_page/search_result_profile_page.dart';
import 'package:basri_s_application28/presentation/song_play_over_screen_page/song_play_over_screen_page.dart';
import 'package:basri_s_application28/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchResultProfileTabContainerScreen extends StatefulWidget {
  @override
  _SearchResultProfileTabContainerScreenState createState() =>
      _SearchResultProfileTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultProfileTabContainerBloc>(
      create: (context) => SearchResultProfileTabContainerBloc(
          SearchResultProfileTabContainerState(
        searchResultProfileTabContainerModelObj:
            SearchResultProfileTabContainerModel(),
      ))
        ..add(SearchResultProfileTabContainerInitialEvent()),
      child: SearchResultProfileTabContainerScreen(),
    );
  }
}

class _SearchResultProfileTabContainerScreenState
    extends State<SearchResultProfileTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController frame5Controller;

  @override
  void initState() {
    super.initState();
    frame5Controller = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BlocSelector<SearchResultProfileTabContainerBloc,
                  SearchResultProfileTabContainerState, TextEditingController?>(
                selector: (state) => state.filledSearchController,
                builder: (context, filledSearchController) {
                  return CustomSearchView(
                    focusNode: FocusNode(),
                    controller: filledSearchController,
                    hintText: "lbl_jenny".tr,
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    padding: SearchViewPadding.PaddingT18,
                    prefix: Container(
                      margin: getMargin(
                        left: 20,
                        top: 18,
                        right: 12,
                        bottom: 18,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSearchGray400,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        56,
                      ),
                    ),
                    suffix: Container(
                      margin: getMargin(
                        left: 30,
                        top: 18,
                        right: 20,
                        bottom: 18,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgClose20x20,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        56,
                      ),
                    ),
                  );
                },
              ),
              Container(
                height: getVerticalSize(
                  38,
                ),
                width: double.maxFinite,
                margin: getMargin(
                  top: 24,
                ),
                child: TabBar(
                  controller: frame5Controller,
                  labelColor: ColorConstant.whiteA700,
                  labelStyle: TextStyle(
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelColor: ColorConstant.redA70002,
                  unselectedLabelStyle: TextStyle(
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                  ),
                  indicator: BoxDecoration(
                    color: ColorConstant.redA70002,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        19,
                      ),
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_songs".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_artists".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_albums".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_podcasts".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_playlists".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_profiles".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  740,
                ),
                child: TabBarView(
                  controller: frame5Controller,
                  children: [
                    SongPlayOverScreenPage.builder(context),
                    ArtistSearchResultPage.builder(context),
                    SearchResultAlbumPage.builder(context),
                    SearchResultPodcastPage.builder(context),
                    SearchResultPlaylistPage.builder(context),
                    SearchResultProfilePage.builder(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
