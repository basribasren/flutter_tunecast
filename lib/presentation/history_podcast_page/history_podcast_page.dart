import '../history_podcast_page/widgets/listpodcasttitle3_item_widget.dart';
import 'bloc/history_podcast_bloc.dart';
import 'models/history_podcast_model.dart';
import 'models/listpodcasttitle3_item_model.dart';
import 'package:basri_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HistoryPodcastPage extends StatefulWidget {
  @override
  _HistoryPodcastPageState createState() => _HistoryPodcastPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HistoryPodcastBloc>(
      create: (context) => HistoryPodcastBloc(HistoryPodcastState(
        historyPodcastModelObj: HistoryPodcastModel(),
      ))
        ..add(HistoryPodcastInitialEvent()),
      child: HistoryPodcastPage(),
    );
  }
}

class _HistoryPodcastPageState extends State<HistoryPodcastPage>
    with AutomaticKeepAliveClientMixin<HistoryPodcastPage> {
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
                child: BlocSelector<HistoryPodcastBloc, HistoryPodcastState,
                    HistoryPodcastModel?>(
                  selector: (state) => state.historyPodcastModelObj,
                  builder: (context, historyPodcastModelObj) {
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
                      itemCount: historyPodcastModelObj
                              ?.listpodcasttitle3ItemList.length ??
                          0,
                      itemBuilder: (context, index) {
                        Listpodcasttitle3ItemModel model =
                            historyPodcastModelObj
                                    ?.listpodcasttitle3ItemList[index] ??
                                Listpodcasttitle3ItemModel();
                        return Listpodcasttitle3ItemWidget(
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
