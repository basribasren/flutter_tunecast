import '../models/playback_item_model.dart';
import 'package:basri_s_application28/core/app_export.dart';
import 'package:basri_s_application28/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlaybackItemWidget extends StatelessWidget {
  PlaybackItemWidget(this.playbackItemModelObj, {this.changeSwitch});

  PlaybackItemModel playbackItemModelObj;

  Function(bool)? changeSwitch;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              playbackItemModelObj.typeTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(
                letterSpacing: getHorizontalSize(
                  0.2,
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                272,
              ),
              margin: getMargin(
                top: 6,
              ),
              child: Text(
                playbackItemModelObj.descriptionTxt,
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRomanMedium14Gray900.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.2,
                  ),
                ),
              ),
            ),
          ],
        ),
        CustomSwitch(
          margin: getMargin(
            left: 63,
            top: 20,
            bottom: 24,
          ),
          value: playbackItemModelObj.isSelectedSwitch,
          onChanged: (value) {
            changeSwitch?.call(value);
          },
        ),
      ],
    );
  }
}
