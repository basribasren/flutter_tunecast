import '../history_music_page/widgets/historymusic_item_widget.dart';
import 'bloc/history_music_bloc.dart';
import 'models/history_music_model.dart';
import 'models/historymusic_item_model.dart';
import 'package:basri_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HistoryMusicPage extends StatefulWidget {
  @override
  _HistoryMusicPageState createState() => _HistoryMusicPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HistoryMusicBloc>(
      create: (context) => HistoryMusicBloc(HistoryMusicState(
        historyMusicModelObj: HistoryMusicModel(),
      ))
        ..add(HistoryMusicInitialEvent()),
      child: HistoryMusicPage(),
    );
  }
}

class _HistoryMusicPageState extends State<HistoryMusicPage>
    with AutomaticKeepAliveClientMixin<HistoryMusicPage> {
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
                child: BlocSelector<HistoryMusicBloc, HistoryMusicState,
                    HistoryMusicModel?>(
                  selector: (state) => state.historyMusicModelObj,
                  builder: (context, historyMusicModelObj) {
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
                          historyMusicModelObj?.historymusicItemList.length ??
                              0,
                      itemBuilder: (context, index) {
                        HistorymusicItemModel model =
                            historyMusicModelObj?.historymusicItemList[index] ??
                                HistorymusicItemModel();
                        return HistorymusicItemWidget(
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
