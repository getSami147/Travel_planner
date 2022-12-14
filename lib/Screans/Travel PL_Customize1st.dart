import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';

import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class CustomizeFrist extends StatefulWidget {
  const CustomizeFrist({super.key});

  @override
  State<CustomizeFrist> createState() => _CustomizeFristState();
}

class _CustomizeFristState extends State<CustomizeFrist> {
  bool? checkbox = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      // Column............................................................>>>
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Center(
            child: text(
          CustomizePlane_YourCountry,
        )),
        Boder_Dropdown().paddingTop(spacing_twinty),
        formField(
          context,
          CustomizePlane_CityAdress,
        ).paddingTop(spacing_standard_new),
        Center(
            child: text(CustomizePlane_returningCountry)
                .paddingTop(spacing_xxLarge)),
        Boder_Dropdown().paddingTop(spacing_twinty),
        formField(
          context,
          CustomizePlane_RCity_Name,
        ).paddingTop(spacing_standard_new),
        CheckboxListTile(
          contentPadding: EdgeInsets.all(0),
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: TravelPlane_AppBarColor,
          title: text(CustomizePlane_Location, fontSize: textSizeSmall),
          value: checkbox,
          onChanged: (value) {
            setState(() {
              checkbox = value!;
            });
          },
        )
      ],
    ).paddingSymmetric(horizontal: spacing_middle));
  }
}
