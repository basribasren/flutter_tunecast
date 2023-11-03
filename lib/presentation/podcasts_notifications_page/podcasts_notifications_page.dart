import '../podcasts_notifications_page/widgets/listpodcasttitle_item_widget.dart';
import '../podcasts_notifications_page/widgets/listsixteen_item_widget.dart';
import 'bloc/podcasts_notifications_bloc.dart';
import 'models/listpodcasttitle_item_model.dart';
import 'models/listsixteen_item_model.dart';
import 'models/podcasts_notifications_model.dart';
import 'package:basri_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PodcastsNotificationsPage extends StatefulWidget {
  @override
  _PodcastsNotificationsPageState createState() =>
      _PodcastsNotificationsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<PodcastsNotificationsBloc>(
      create: (context) => PodcastsNotificationsBloc(PodcastsNotificationsState(
        podcastsNotificationsModelObj: PodcastsNotificationsModel(),
      ))
        ..add(PodcastsNotificationsInitialEvent()),
      child: PodcastsNotificationsPage(),
    );
  }
}

class _PodcastsNotificationsPageState extends State<PodcastsNotificationsPage>
    with AutomaticKeepAliveClientMixin<PodcastsNotificationsPage> {
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
                    top: 25,
                    right: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "msg_new_podcasts_re".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanBold18,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 22,
                        ),
                        child: BlocSelector<
                            PodcastsNotificationsBloc,
                            PodcastsNotificationsState,
                            PodcastsNotificationsModel?>(
                          selector: (state) =>
                              state.podcastsNotificationsModelObj,
                          builder: (context, podcastsNotificationsModelObj) {
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
                              itemCount: podcastsNotificationsModelObj
                                      ?.listpodcasttitleItemList.length ??
                                  0,
                              itemBuilder: (context, index) {
                                ListpodcasttitleItemModel model =
                                    podcastsNotificationsModelObj
                                            ?.listpodcasttitleItemList[index] ??
                                        ListpodcasttitleItemModel();
                                return ListpodcasttitleItemWidget(
                                  model,
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 23,
                        ),
                        child: Text(
                          "lbl_yesterday".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold18,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 22,
                        ),
                        child: BlocSelector<
                            PodcastsNotificationsBloc,
                            PodcastsNotificationsState,
                            PodcastsNotificationsModel?>(
                          selector: (state) =>
                              state.podcastsNotificationsModelObj,
                          builder: (context, podcastsNotificationsModelObj) {
                            return ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    23,
                                  ),
                                );
                              },
                              itemCount: podcastsNotificationsModelObj
                                      ?.listsixteenItemList.length ??
                                  0,
                              itemBuilder: (context, index) {
                                ListsixteenItemModel model =
                                    podcastsNotificationsModelObj
                                            ?.listsixteenItemList[index] ??
                                        ListsixteenItemModel();
                                return ListsixteenItemWidget(
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
