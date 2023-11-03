import '../podcasters_page/widgets/podcasters_item_widget.dart';
import 'bloc/podcasters_bloc.dart';
import 'models/podcasters_item_model.dart';
import 'models/podcasters_model.dart';
import 'package:basri_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PodcastersPage extends StatefulWidget {
  @override
  _PodcastersPageState createState() => _PodcastersPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<PodcastersBloc>(
      create: (context) => PodcastersBloc(PodcastersState(
        podcastersModelObj: PodcastersModel(),
      ))
        ..add(PodcastersInitialEvent()),
      child: PodcastersPage(),
    );
  }
}

class _PodcastersPageState extends State<PodcastersPage>
    with AutomaticKeepAliveClientMixin<PodcastersPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 32,
                    right: 24,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "lbl_sort_by".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20,
                          ),
                          Spacer(),
                          Padding(
                            padding: getPadding(
                              top: 2,
                              bottom: 2,
                            ),
                            child: Text(
                              "msg_recently_downlo".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold16RedA70002
                                  .copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.2,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgSort20x20,
                            height: getSize(
                              20,
                            ),
                            width: getSize(
                              20,
                            ),
                            margin: getMargin(
                              left: 12,
                              bottom: 4,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: getPadding(
                          top: 22,
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
                          top: 29,
                        ),
                        child: BlocSelector<PodcastersBloc, PodcastersState,
                            PodcastersModel?>(
                          selector: (state) => state.podcastersModelObj,
                          builder: (context, podcastersModelObj) {
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
                              itemCount: podcastersModelObj
                                      ?.podcastersItemList.length ??
                                  0,
                              itemBuilder: (context, index) {
                                PodcastersItemModel model = podcastersModelObj
                                        ?.podcastersItemList[index] ??
                                    PodcastersItemModel();
                                return PodcastersItemWidget(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
