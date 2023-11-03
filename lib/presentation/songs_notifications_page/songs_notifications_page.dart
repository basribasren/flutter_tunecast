import '../songs_notifications_page/widgets/listday_item_widget.dart';
import '../songs_notifications_page/widgets/listyesterday_item_widget.dart';
import 'bloc/songs_notifications_bloc.dart';
import 'models/listday_item_model.dart';
import 'models/listyesterday_item_model.dart';
import 'models/songs_notifications_model.dart';
import 'package:basri_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SongsNotificationsPage extends StatefulWidget {
  @override
  _SongsNotificationsPageState createState() => _SongsNotificationsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SongsNotificationsBloc>(
      create: (context) => SongsNotificationsBloc(SongsNotificationsState(
        songsNotificationsModelObj: SongsNotificationsModel(),
      ))
        ..add(SongsNotificationsInitialEvent()),
      child: SongsNotificationsPage(),
    );
  }
}

class _SongsNotificationsPageState extends State<SongsNotificationsPage>
    with AutomaticKeepAliveClientMixin<SongsNotificationsPage> {
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
                        "msg_new_music_relea".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanRegular18,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 22,
                        ),
                        child: BlocSelector<SongsNotificationsBloc,
                            SongsNotificationsState, SongsNotificationsModel?>(
                          selector: (state) => state.songsNotificationsModelObj,
                          builder: (context, songsNotificationsModelObj) {
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
                              itemCount: songsNotificationsModelObj
                                      ?.listdayItemList.length ??
                                  0,
                              itemBuilder: (context, index) {
                                ListdayItemModel model =
                                    songsNotificationsModelObj
                                            ?.listdayItemList[index] ??
                                        ListdayItemModel();
                                return ListdayItemWidget(
                                  model,
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 25,
                        ),
                        child: Text(
                          "lbl_yesterday".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanRegular18,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 22,
                        ),
                        child: BlocSelector<SongsNotificationsBloc,
                            SongsNotificationsState, SongsNotificationsModel?>(
                          selector: (state) => state.songsNotificationsModelObj,
                          builder: (context, songsNotificationsModelObj) {
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
                              itemCount: songsNotificationsModelObj
                                      ?.listyesterdayItemList.length ??
                                  0,
                              itemBuilder: (context, index) {
                                ListyesterdayItemModel model =
                                    songsNotificationsModelObj
                                            ?.listyesterdayItemList[index] ??
                                        ListyesterdayItemModel();
                                return ListyesterdayItemWidget(
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
