import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/utils/TravelPlane%20Colors.dart';

import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class Customize6th extends StatelessWidget {
  const Customize6th({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: text(CustomizePlane_airport_transfers,
                    maxLine: 10, isCentered: true)
                .paddingSymmetric(horizontal: spacing_twinty)),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            elevatedButton(
                width: 60,
                context,
                backgroundColor: TravelPlane_whiteColor,
                bodersideColor: TravelPlane_whiteColor,
                Onpressed: () {},
                text(
                  CustomizePlane_No,
                  fontSize: textSizeSmall,
                  fontWeight: FontWeight.w500,
                  textColor: TravelPlane_AppBarColor,
                )).paddingRight(spacing_twinty),
            elevatedButton(
                width: 60,
                context,
                Onpressed: () {},
                text(
                  CustomizePlane_Yes,
                  fontSize: textSizeSmall,
                  fontWeight: FontWeight.w500,
                  textColor: TravelPlane_whiteColor,
                )),
          ],
        ).paddingTop(70),
      ],
    ).paddingSymmetric(horizontal: spacing_middle);
  }
}
