import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/Models/CheekBoxModel.dart';

import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class Customize13th extends StatefulWidget {
  const Customize13th({super.key});

  @override
  State<Customize13th> createState() => _Customize13thState();
}

class _Customize13thState extends State<Customize13th> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Center(
            child: text(CustomizePlane_indicateBox,
                maxLine: 10, isCentered: true)),
        formField(
                context,
                prefixIcon: Icon(Icons.search_outlined),
                CustomizePlane_SearchCNS)
            .paddingOnly(
                top: spacing_twinty,
                left: spacing_middle,
                right: spacing_middle),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: customize13Model.length,
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
                    value: customize13Model[index].isSelected,
                    onChanged: (bool? value) {
                      setState(() {
                        customize13Model[index].isSelected = value;
                      });
                    },
                  ),
                ),
                text(customize13Model[index].titleBox3,
                    fontSize: textSizeSMedium)
              ],
            );
          },
        ).paddingTop(spacing_thirty),
      ],
    ).paddingSymmetric(horizontal: spacing_middle));
  }
}
