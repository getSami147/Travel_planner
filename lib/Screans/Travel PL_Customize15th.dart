import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/utils/TravelPlane%20Widget.dart';

import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Strings.dart';

class Customize15th extends StatelessWidget {
  const Customize15th({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
                  child: text(CustomizePlane_additionalcomments,
                      maxLine: 10, isCentered: true))
              .paddingSymmetric(horizontal: spacing_twinty),
          formField(context, 'Write here', maxLine: 10)
              .paddingTop(spacing_large)
        ],
      ).paddingSymmetric(horizontal: spacing_middle),
    );
  }
}
