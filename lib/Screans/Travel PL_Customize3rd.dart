import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';

import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Images.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class Customize3rd extends StatefulWidget {
  const Customize3rd({super.key});

  @override
  State<Customize3rd> createState() => _Customize3rdState();
}

class _Customize3rdState extends State<Customize3rd> {
  String? selectedIndex = '0';
  var increament = 0;

  List<String> listOfAdult = [
    "0",
    "1",
    "2",
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
              child: text(CustomizePlane_passengers_No,
                  maxLine: 10, isCentered: true)),
          Container(
            height: 60,
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
              underline: 0.height,
              hint: text(CustomizePlane_N0_Adults,
                      fontSize: textSizeSMedium,
                      textColor: TravelPlane_textGreyColor)
                  .paddingSymmetric(horizontal: spacing_middle),
              elevation: 0,
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
          for (var i = 0; i < increament; i++)
            Container(
              height: 60,
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
                underline: 0.height,
                hint: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    text(CustomizePlane_Childrens, fontSize: textSizeSMedium),
                    Row(
                      children: [
                        text('Age',
                                textColor: TravelPlane_AppBarColor,
                                fontSize: textSizeSmall)
                            .paddingRight(spacing_middle),
                        text(selectedIndex,
                            fontSize: textSizeSMedium,
                            textColor: TravelPlane_AppBarColor)
                      ],
                    ),
                  ],
                ).paddingSymmetric(horizontal: spacing_middle),
                elevation: 0,
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
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      increament++;
                    });
                  },
                  icon: Icon(
                    Icons.add,
                    color: TravelPlane_AppBarColor,
                  )),
              text(CustomizePlane_Add_Children, fontSize: textSizeSmall),
            ],
          ),
          elevatedButton(
            context,
            text('text'),
            Onpressed: () {
              selectedIndex == "0"
                  ? showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          child: Container(
                            height: 190,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: whiteColor),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                text(CustomizePlane_WARNING,
                                        fontSize: textSizeLargeMedium,
                                        textColor: Color(0xffFF001F),
                                        fontWeight: FontWeight.w600)
                                    .paddingTop(spacing_middle),
                                text(
                                  CustomizePlane_WARNINGText,
                                  maxLine: 3,
                                  isCentered: true,
                                  fontSize: textSizeSMedium,
                                ).paddingTop(spacing_middle),
                                elevatedButton(context, text('OK'),
                                        height: 45,
                                        width: double.infinity,
                                        Onpressed: () {},
                                        borderRadius: 10,
                                        backgroundColor:
                                            TravelPlane_AppBarColor)
                                    .paddingTop(spacing_twinty)
                              ],
                            ).paddingSymmetric(horizontal: spacing_twinty),
                          ),
                        );
                      },
                    )
                  : null;
            },
          )
        ],
      ).paddingSymmetric(horizontal: spacing_middle),
    );
  }
}
