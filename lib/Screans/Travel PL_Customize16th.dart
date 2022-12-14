import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Models/Radio Model.dart';
import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class Customize16th extends StatefulWidget {
  const Customize16th({super.key});

  @override
  State<Customize16th> createState() => _Customize16thState();
}

class _Customize16thState extends State<Customize16th> {
  var groupvalues = 1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                    child: text(CustomizePlane_appreciating,
                        maxLine: 10, isCentered: true))
                .paddingSymmetric(horizontal: spacing_twinty),
            Center(
                    child: text(CustomizePlane_Contact_info,
                            maxLine: 10, isCentered: true)
                        .paddingTop(spacing_thirty))
                .paddingSymmetric(horizontal: spacing_twinty),
            Column(
              children: [
                formField(
                  context,
                  CustomizePlane_PassportName,
                ).paddingTop(spacing_thirty),
                formField(
                  context,
                  CustomizePlane_FirstName,
                ).paddingTop(spacing_thirty),
                formField(
                  context,
                  CustomizePlane_LastName,
                ).paddingTop(spacing_thirty),
                formField(
                  context,
                  CustomizePlane_residency,
                ).paddingTop(spacing_thirty),
                formField(
                  context,
                  CustomizePlane_Nationality,
                ).paddingTop(spacing_thirty),
                formField(
                  context,
                  CustomizePlane_Email,
                ).paddingTop(spacing_thirty),
                formField(
                  context,
                  CustomizePlane_ContactNumber,
                ).paddingTop(spacing_thirty),
              ],
            ).paddingSymmetric(
              horizontal: spacing_middle,
            ),
            text(
              CustomizePlane_touch_Via,
              fontWeight: FontWeight.w500,
              maxLine: 10,
            ).paddingTop(spacing_twinty),
            ListView.builder(
              itemCount: customizPlane16_Model.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Radio(
                      activeColor: TravelPlane_AppBarColor,
                      value: travelStyle_Model[index].Value,
                      groupValue: groupvalues,
                      onChanged: (dynamic value) {
                        setState(() {});
                        groupvalues = value;
                      },
                    ),
                    Expanded(
                      child: text(travelStyle_Model[index].RadioText,
                          fontSize: textSizeSMedium, maxLine: 5),
                    )
                  ],
                );
              },
            ).paddingTop(spacing_middle),
          ],
        ).paddingSymmetric(horizontal: spacing_middle),
      ),
    );
  }
}
