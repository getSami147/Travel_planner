import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Models/Radio Model.dart';
import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class Customize11th extends StatefulWidget {
  const Customize11th({super.key});

  @override
  State<Customize11th> createState() => _Customize11thState();
}

class _Customize11thState extends State<Customize11th> {
  var groupvalues = 1;
  var group2values = 1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
              child: text(CustomizePlane_Physical_Preparation,
                      maxLine: 10, isCentered: true)
                  .paddingSymmetric(horizontal: spacing_middle)),
          ListView.builder(
            itemCount: physicalPreparation_Model.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Radio(
                    activeColor: TravelPlane_AppBarColor,
                    value: physicalPreparation_Model[index].Value,
                    groupValue: groupvalues,
                    onChanged: (dynamic value) {
                      setState(() {});
                      groupvalues = value;
                    },
                  ),
                  Expanded(
                    child: text(physicalPreparation_Model[index].RadioText,
                        fontSize: textSizeSMedium, maxLine: 5),
                  )
                ],
              );
            },
          ).paddingTop(spacing_twinty),
          Center(
                  child: text(CustomizePlane_travelstyle,
                          maxLine: 10, isCentered: true)
                      .paddingSymmetric(horizontal: spacing_middle))
              .paddingTop(spacing_xxLarge),
          ListView.builder(
            itemCount: travelStyle_Model.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Radio(
                    activeColor: TravelPlane_AppBarColor,
                    value: travelStyle_Model[index].Value,
                    groupValue: group2values,
                    onChanged: (dynamic value) {
                      setState(() {});
                      group2values = value;
                    },
                  ),
                  Expanded(
                    child: text(travelStyle_Model[index].RadioText,
                        fontSize: textSizeSMedium, maxLine: 5),
                  )
                ],
              );
            },
          ).paddingTop(spacing_twinty),
          text(
            CustomizePlane_otherDiscription,
            fontSize: textSizeSmall,
            maxLine: 10,
          ).paddingTop(spacing_thirty)
        ],
      ).paddingSymmetric(horizontal: spacing_middle),
    );
  }
}
