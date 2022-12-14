import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';

import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Images.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class Customize14th extends StatefulWidget {
  const Customize14th({super.key});

  @override
  State<Customize14th> createState() => _Customize14thState();
}

class _Customize14thState extends State<Customize14th> {
  String? selectedIndex = '10';

  List<String> listOfAdult = [
    "1000",
    "2000",
    '3000',
    '4000',
    '5000',
    '6000',
    '7000',
    '8000',
    '9000',
    '10000'
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
                  child: text(CustomizePlane_anticipateSpending,
                      maxLine: 10, isCentered: true))
              .paddingSymmetric(horizontal: spacing_middle),
          Container(
            height: 55,
            decoration: BoxDecoration(
                color: TravelPlane_whiteColor,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff252525).withOpacity(0.08),
                      blurRadius: 24,
                      offset: Offset(0, 4))
                ]),
            child: DropdownButton(
              elevation: 0,
              underline: 0.height,
              hint: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text(CustomizePlane_Budget,
                      fontSize: textSizeSMedium,
                      textColor: TravelPlane_textGreyColor),
                  text(CustomizePlane_Currency,
                      fontSize: textSizeSmall,
                      textColor: TravelPlane_textGreyColor),
                ],
              ).paddingSymmetric(horizontal: spacing_middle),
              icon: SvgPicture.asset(TravelPlane_ic_arrow_Down_ios)
                  .paddingRight(spacing_standard_new),
              borderRadius: BorderRadius.circular(10),
              isExpanded: true,
              items: listOfAdult.map((e) {
                return DropdownMenuItem(
                  value: e,
                  child: text(
                    e,
                  ).paddingLeft(spacing_standard_new),
                );
              }).toList(),
              onChanged: (dynamic value) {
                setState(() {
                  selectedIndex = value;
                });
              },
            ),
          ).paddingTop(spacing_twinty),
        ],
      ).paddingSymmetric(horizontal: spacing_middle),
    );
  }
}
