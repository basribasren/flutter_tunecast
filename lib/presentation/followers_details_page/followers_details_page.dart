import '../followers_details_page/widgets/listname3_item_widget.dart';
import 'bloc/followers_details_bloc.dart';
import 'models/followers_details_model.dart';
import 'models/listname3_item_model.dart';
import 'package:basri_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FollowersDetailsPage extends StatefulWidget {
  @override
  _FollowersDetailsPageState createState() => _FollowersDetailsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<FollowersDetailsBloc>(
      create: (context) => FollowersDetailsBloc(FollowersDetailsState(
        followersDetailsModelObj: FollowersDetailsModel(),
      ))
        ..add(FollowersDetailsInitialEvent()),
      child: FollowersDetailsPage(),
    );
  }
}

class _FollowersDetailsPageState extends State<FollowersDetailsPage>
    with AutomaticKeepAliveClientMixin<FollowersDetailsPage> {
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
                  top: 30,
                  right: 24,
                ),
                child: BlocSelector<FollowersDetailsBloc, FollowersDetailsState,
                    FollowersDetailsModel?>(
                  selector: (state) => state.followersDetailsModelObj,
                  builder: (context, followersDetailsModelObj) {
                    return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            24,
                          ),
                        );
                      },
                      itemCount:
                          followersDetailsModelObj?.listname3ItemList.length ??
                              0,
                      itemBuilder: (context, index) {
                        Listname3ItemModel model = followersDetailsModelObj
                                ?.listname3ItemList[index] ??
                            Listname3ItemModel();
                        return Listname3ItemWidget(
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
