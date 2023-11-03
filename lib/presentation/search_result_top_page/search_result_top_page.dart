import '../search_result_top_page/widgets/listsongvalue_item_widget.dart';
import 'bloc/search_result_top_bloc.dart';
import 'models/listsongvalue_item_model.dart';
import 'models/search_result_top_model.dart';
import 'package:basri_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchResultTopPage extends StatefulWidget {
  @override
  _SearchResultTopPageState createState() => _SearchResultTopPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultTopBloc>(
      create: (context) => SearchResultTopBloc(SearchResultTopState(
        searchResultTopModelObj: SearchResultTopModel(),
      ))
        ..add(SearchResultTopInitialEvent()),
      child: SearchResultTopPage(),
    );
  }
}

class _SearchResultTopPageState extends State<SearchResultTopPage>
    with AutomaticKeepAliveClientMixin<SearchResultTopPage> {
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
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 24,
                  right: 24,
                ),
                child: BlocSelector<SearchResultTopBloc, SearchResultTopState,
                    SearchResultTopModel?>(
                  selector: (state) => state.searchResultTopModelObj,
                  builder: (context, searchResultTopModelObj) {
                    return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            16,
                          ),
                        );
                      },
                      itemCount: searchResultTopModelObj
                              ?.listsongvalueItemList.length ??
                          0,
                      itemBuilder: (context, index) {
                        ListsongvalueItemModel model = searchResultTopModelObj
                                ?.listsongvalueItemList[index] ??
                            ListsongvalueItemModel();
                        return ListsongvalueItemWidget(
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
