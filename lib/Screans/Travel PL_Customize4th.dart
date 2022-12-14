import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/Models/Radio%20Model.dart';
import 'package:travel_plane/utils/TravelPlane%20Colors.dart';

import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class Customize4th extends StatefulWidget {
  const Customize4th({super.key});

  @override
  State<Customize4th> createState() => _Customize4thState();
}

class _Customize4thState extends State<Customize4th> {
  var groupvalues = 1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: text(
            CustomizePlane_TicketClass,
            maxLine: 10,
          )),
          ListView.builder(
            itemCount: radioModel.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Radio(
                    activeColor: TravelPlane_AppBarColor,
                    value: radioModel[index].Value,
                    groupValue: groupvalues,
                    onChanged: (dynamic value) {
                      setState(() {});
                      groupvalues = value;
                    },
                  ),
                  text(radioModel[index].RadioText,
                      fontSize: textSizeSMedium, maxLine: 5)
                ],
              );
            },
          ).paddingTop(spacing_thirty),
          Center(
            child: text(CustomizePlane_AirlineBrand,
                    isCentered: true,
                    maxLine: 5,
                    textColor: groupvalues == 3
                        ? TravelPlane_textGreyColor
                        : blackColor)
                .paddingOnly(
                    top: spacing_xxLarge,
                    left: spacing_standard_new,
                    right: spacing_standard_new),
          ),
          formField(
            textcolor: groupvalues == 3 ? whiteColor : blackColor,
            filledcolor:
                groupvalues == 3 ? TravelPlane_textGreyColor : whiteColor,
            context,
            CustomizePlane_AirlineName,
          ).paddingTop(spacing_twinty),
        ],
      ).paddingSymmetric(horizontal: spacing_middle),
    );
  }
}
