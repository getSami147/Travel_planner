import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/utils/TravelPlane%20Constant.dart';
import 'package:travel_plane/utils/TravelPlane%20Widget.dart';

import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Images.dart';
import '../utils/TravelPlane Strings.dart';

class NotificationFull extends StatelessWidget {
  const NotificationFull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(Notifications_Notifications,
          backWidget: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          color: TravelPlane_AppBarColor,
          textColor: TravelPlane_whiteColor,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w400, color: TravelPlane_whiteColor)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(Notifications_Today, fontWeight: FontWeight.w600)
                .paddingTop(spacing_twinty),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: TravelPlane_AppBarColor),
                  child: SvgPicture.asset(
                    height: 20,
                    width: 20,
                    TravelPlane_ic_Order_Ready,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        text(Notifications_oderReady,
                                fontWeight: FontWeight.w600)
                            .paddingLeft(spacing_middle),
                        text(
                          Notifications_TimeDate,
                          fontSize: textSizeSmall,
                        ).paddingLeft(spacing_standard_new),
                      ],
                    ),
                    text(Notifications_Detail,
                            fontSize: textSizeSmall,
                            fontWeight: FontWeight.w500)
                        .paddingLeft(10),
                  ],
                ),
              ],
            ).paddingTop(spacing_standard_new),
            Divider(
              color: grey.withOpacity(.09),
              thickness: 17,
            ).paddingTop(spacing_middle),
            text(Notifications_Yesterday, fontWeight: FontWeight.w600)
                .paddingTop(spacing_middle),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: TravelPlane_AppBarColor),
                          child: SizedBox(
                            height: 20,
                            width: 20,
                            child: SvgPicture.asset(
                              TravelPlane_ic_Order_Ready,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  text(Notifications_oderReady,
                                          fontWeight: FontWeight.w600)
                                      .paddingLeft(spacing_middle),
                                  text(
                                    Notifications_TimeDate,
                                    fontSize: textSizeSmall,
                                  ).paddingLeft(spacing_standard_new),
                                ],
                              ),
                              text(Products_Detail2,
                                      fontSize: textSizeSMedium, maxLine: 2)
                                  .paddingSymmetric(horizontal: spacing_twinty),
                            ],
                          ),
                        ),
                      ],
                    ).paddingTop(spacing_standard_new),
                    Divider(
                      color: grey.withOpacity(.09),
                      thickness: 1,
                    )
                  ],
                );
              },
            ),
            text(Notifications_week, fontWeight: FontWeight.w600)
                .paddingTop(spacing_middle),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: TravelPlane_AppBarColor),
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: SvgPicture.asset(
                      TravelPlane_ic_Order_Ready,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        text(Notifications_oderReady,
                                fontWeight: FontWeight.w600)
                            .paddingLeft(spacing_middle),
                        text(
                          Notifications_TimeDate,
                          fontSize: textSizeSmall,
                        ).paddingLeft(spacing_standard_new),
                      ],
                    ),
                    text(Notifications_Detail,
                            fontSize: textSizeSmall,
                            fontWeight: FontWeight.w500)
                        .paddingLeft(10),
                  ],
                ),
              ],
            ).paddingTop(spacing_standard_new),
            Divider(
              color: grey.withOpacity(.09),
              thickness: 1,
            ).paddingTop(spacing_middle),
          ],
        ).paddingSymmetric(horizontal: spacing_standard_new),
      ),
    );
  }
}
