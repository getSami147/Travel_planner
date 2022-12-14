import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/utils/TravelPlane%20Colors.dart';

import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class Customize9th extends StatelessWidget {
  const Customize9th({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: text(CustomizePlane_preferencesDiscrition,
                      maxLine: 10, isCentered: true)
                  .paddingSymmetric(horizontal: spacing_middle)),
          Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color(0xff252525).withOpacity(0.10),
                  offset: Offset(0, 4),
                  blurRadius: 24,
                )
              ]),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                elevation: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    text(CustomizePlane_InputChoice, fontSize: textSizeSMedium),
                    Row(
                      children: [
                        Icon(
                          Icons.add,
                          size: 20,
                          color: TravelPlane_AppBarColor,
                        ),
                        text(CustomizePlane_Add,
                            fontSize: textSizeSmall,
                            fontWeight: FontWeight.w500,
                            textColor: TravelPlane_AppBarColor),
                      ],
                    ),
                  ],
                ).paddingAll(spacing_standard_new),
              )).paddingTop(spacing_twinty),
          Wrap(
            children: [
              WrapText_Card(
                Cartext: CustomizePlane_Spas_Wellness,
                ContainerColor: TravelPlane_AppBarColor,
                textcolor: TravelPlane_whiteColor,
              ),
              WrapText_Card(
                Cartext: CustomizePlane_Nightlife,
                ContainerColor: TravelPlane_whiteColor,
                textcolor: TravelPlane_AppBarColor,
              ),
              WrapText_Card(
                Cartext: CustomizePlane_GamesEntertainment,
                ContainerColor: TravelPlane_whiteColor,
                textcolor: TravelPlane_AppBarColor,
              ),
              WrapText_Card(
                Cartext: CustomizePlane_Museums,
                ContainerColor: TravelPlane_whiteColor,
                textcolor: TravelPlane_AppBarColor,
              ),
              WrapText_Card(
                Cartext: CustomizePlane_WaterSports,
                ContainerColor: TravelPlane_whiteColor,
                textcolor: TravelPlane_AppBarColor,
              ),
              WrapText_Card(
                Cartext: CustomizePlane_Landmarks,
                ContainerColor: TravelPlane_whiteColor,
                textcolor: TravelPlane_AppBarColor,
              ),
              WrapText_Card(
                Cartext: CustomizePlane_Landmarks,
                ContainerColor: TravelPlane_whiteColor,
                textcolor: TravelPlane_AppBarColor,
              ),
              WrapText_Card(
                Cartext: CustomizePlane_Museums,
                ContainerColor: TravelPlane_whiteColor,
                textcolor: TravelPlane_AppBarColor,
              ),
              WrapText_Card(
                Cartext: CustomizePlane_Landmarks,
                ContainerColor: TravelPlane_whiteColor,
                textcolor: TravelPlane_AppBarColor,
              ),
              WrapText_Card(
                Cartext: CustomizePlane_WaterSports,
                ContainerColor: TravelPlane_whiteColor,
                textcolor: TravelPlane_AppBarColor,
              ),
              WrapText_Card(
                Cartext: CustomizePlane_Museums,
                ContainerColor: TravelPlane_whiteColor,
                textcolor: TravelPlane_AppBarColor,
              ),
              WrapText_Card(
                Cartext: CustomizePlane_Landmarks,
                ContainerColor: TravelPlane_whiteColor,
                textcolor: TravelPlane_AppBarColor,
              ),
              WrapText_Card(
                Cartext: CustomizePlane_Landmarks,
                ContainerColor: TravelPlane_whiteColor,
                textcolor: TravelPlane_AppBarColor,
              ),
              WrapText_Card(
                Cartext: CustomizePlane_Landmarks,
                ContainerColor: TravelPlane_whiteColor,
                textcolor: TravelPlane_AppBarColor,
              ),
              WrapText_Card(
                Cartext: CustomizePlane_Museums,
                ContainerColor: TravelPlane_whiteColor,
                textcolor: TravelPlane_AppBarColor,
              ),
              WrapText_Card(
                Cartext: CustomizePlane_Landmarks,
                ContainerColor: TravelPlane_whiteColor,
                textcolor: TravelPlane_AppBarColor,
              ),
            ],
          ).paddingTop(spacing_middle)
        ],
      ).paddingSymmetric(horizontal: spacing_middle),
    );
  }
}

class WrapText_Card extends StatelessWidget {
  Color? ContainerColor;
  Color? textcolor;
  String? Cartext;
  WrapText_Card({this.Cartext, this.ContainerColor, this.textcolor, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
                color: ContainerColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff252525).withOpacity(0.10),
                    offset: Offset(0, 4),
                    blurRadius: 24,
                  )
                ]),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(Cartext,
                    textColor: textcolor,
                    fontSize: textSizeSmall,
                    fontWeight: FontWeight.w500),
              ],
            ).paddingAll(spacing_standard_new))
        .paddingOnly(left: spacing_middle, top: spacing_middle);
  }
}
