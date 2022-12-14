import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/Screans/Travel%20PL_NotificationFull.dart';

import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Images.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  SvgPicture.asset(
                    TravelPlane_Notification_bell,
                    color: TravelPlane_AppBarColor,
                    height: 160,
                    width: 130,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotificationFull(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: TravelPlane_AppBarColor,
                      ),
                      child: text(Notifications_No,
                          textColor: TravelPlane_whiteColor),
                    ),
                  ),
                ],
              ),
              text(Notifications_NoNotifications, fontSize: textSizeLargeMedium)
                  .paddingTop(spacing_xxLarge),
              text(
                Notifications_ReviewsSubTitle,
                fontSize: textSizeSMedium,
                maxLine: 2,
                textColor: TravelPlane_IconsGrey,
              )
            ],
          ).paddingSymmetric(horizontal: spacing_twinty),
        ),
      ),
    );
  }
}
