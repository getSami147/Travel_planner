import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/Models/CheekBoxModel.dart';

import '../Models/Radio Model.dart';
import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class Customize7th extends StatefulWidget {
  const Customize7th({super.key});

  @override
  State<Customize7th> createState() => _Customize7thState();
}

class _Customize7thState extends State<Customize7th> {
  var groupvalues = 1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
              child:
                  text(CustomizePlane_checkmark, maxLine: 10, isCentered: true)
                      .paddingSymmetric(horizontal: spacing_twinty)),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: customize7Model.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                      unselectedWidgetColor: TravelPlane_textGreyColor,
                    ),
                    child: Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      activeColor: TravelPlane_AppBarColor,
                      value: customize7Model[index].isSelected,
                      onChanged: (bool? value) {
                        setState(() {
                          customize7Model[index].isSelected = value;
                        });
                      },
                    ),
                  ),
                  text(customize7Model[index].titleBox3,
                      fontSize: textSizeSMedium)
                ],
              );
            },
          ).paddingTop(spacing_thirty),
          Center(
              child:
                  text(CustomizePlane_checkmark2, maxLine: 10, isCentered: true)
                      .paddingSymmetric(horizontal: spacing_twinty)),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: customize7Model2.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                      unselectedWidgetColor: TravelPlane_textGreyColor,
                    ),
                    child: Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      activeColor: TravelPlane_AppBarColor,
                      value: customize7Model2[index].isSelected,
                      onChanged: (bool? value) {
                        setState(() {
                          customize7Model2[index].isSelected = value;
                        });
                      },
                    ),
                  ),
                  text(customize7Model2[index].titleBox3,
                      fontSize: textSizeSMedium)
                ],
              );
            },
          ).paddingTop(spacing_twinty),
          Center(
              child:
                  text(CustomizePlane_checkmark3, maxLine: 10, isCentered: true)
                      .paddingSymmetric(horizontal: spacing_twinty)),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: customize7Model3.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                      unselectedWidgetColor: TravelPlane_textGreyColor,
                    ),
                    child: Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      activeColor: TravelPlane_AppBarColor,
                      value: customize7Model3[index].isSelected,
                      onChanged: (bool? value) {
                        setState(() {
                          customize7Model3[index].isSelected = value;
                        });
                      },
                    ),
                  ),
                  text(customize7Model3[index].titleBox3,
                      fontSize: textSizeSMedium)
                ],
              );
            },
          ).paddingTop(spacing_thirty),
        ],
      ).paddingSymmetric(horizontal: spacing_middle),
    );
  }
}
