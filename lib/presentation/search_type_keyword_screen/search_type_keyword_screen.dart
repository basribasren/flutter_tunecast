import '../search_type_keyword_screen/widgets/listname1_item_widget.dart';
import 'bloc/search_type_keyword_bloc.dart';
import 'models/listname1_item_model.dart';
import 'models/search_type_keyword_model.dart';
import 'package:basri_s_application28/core/app_export.dart';
import 'package:basri_s_application28/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchTypeKeywordScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchTypeKeywordBloc>(
      create: (context) => SearchTypeKeywordBloc(SearchTypeKeywordState(
        searchTypeKeywordModelObj: SearchTypeKeywordModel(),
      ))
        ..add(SearchTypeKeywordInitialEvent()),
      child: SearchTypeKeywordScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            all: 24,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BlocSelector<SearchTypeKeywordBloc, SearchTypeKeywordState,
                  TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    focusNode: FocusNode(),
                    controller: searchController,
                    hintText: "lbl_abcdefghijklm2".tr,
                    variant: SearchViewVariant.OutlineRedA70002,
                    prefix: Container(
                      margin: getMargin(
                        left: 20,
                        top: 18,
                        right: 12,
                        bottom: 18,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSearchRedA70002,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        56,
                      ),
                    ),
                    suffix: Padding(
                      padding: EdgeInsets.only(
                        right: getHorizontalSize(
                          15,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {
                          searchController!.clear();
                        },
                        icon: Icon(
                          Icons.clear,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: getPadding(
                  top: 23,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_recent_searches".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold20,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 2,
                      ),
                      child: Text(
                        "lbl_clear_all".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtUrbanistRomanBold16RedA70002.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 24,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.blueGray100,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 23,
                ),
                child: BlocSelector<SearchTypeKeywordBloc,
                    SearchTypeKeywordState, SearchTypeKeywordModel?>(
                  selector: (state) => state.searchTypeKeywordModelObj,
                  builder: (context, searchTypeKeywordModelObj) {
                    return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            25,
                          ),
                        );
                      },
                      itemCount:
                          searchTypeKeywordModelObj?.listname1ItemList.length ??
                              0,
                      itemBuilder: (context, index) {
                        Listname1ItemModel model = searchTypeKeywordModelObj
                                ?.listname1ItemList[index] ??
                            Listname1ItemModel();
                        return Listname1ItemWidget(
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
