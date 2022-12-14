import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class Customize8th extends StatelessWidget {
  const Customize8th({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: text(CustomizePlane_specialn_eeds,
                    maxLine: 10, isCentered: true)
                .paddingSymmetric(horizontal: spacing_middle)),
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
