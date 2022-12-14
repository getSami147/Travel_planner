import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Images.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        elevation: 0,
        backWidget: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 18,
          ),
        ),
        TravelPlane_AboutUs,
        textColor: white,
        titleTextStyle:
            TextStyle(fontWeight: FontWeight.w400, fontSize: textSizeMedium),
        color: TravelPlane_AppBarColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text(AboutUS_CustomersApp, fontWeight: FontWeight.w600),
                  text(AboutUS_AboutApp, fontSize: textSizeSMedium, maxLine: 10)
                      .paddingTop(spacing_twinty),
                  text(
                    AboutUS_AboutApp2,
                    fontSize: textSizeSMedium,
                  ),
                  text(
                    AboutUS_Version,
                    fontSize: textSizeSmall,
                  ).paddingTop(spacing_twinty),
                  text(AboutUS_AboutApp3,
                          fontSize: textSizeSMedium, maxLine: 10)
                      .paddingTop(spacing_twinty),
                  text(
                    AboutUS_TermsConditions,
                    fontSize: textSizeThirteen,
                    fontWeight: FontWeight.w500,
                    textColor: TravelPlane_AppBarColor,
                  ).paddingTop(spacing_middle),
                ],
              ),
            ),
          ),
          text(
            AboutUS_FollowUs,
            fontSize: textSizeThirteen,
            fontWeight: FontWeight.w500,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                TravelPlane_Whatsapp,
                height: 40,
                width: 40,
              ),
              Image.asset(
                TravelPlane_Facebook,
                height: 40,
                width: 40,
              ).paddingLeft(spacing_twinty),
              Image.asset(
                TravelPlane_Instagram,
                height: 40,
                width: 40,
              ).paddingLeft(spacing_twinty),
              Image.asset(
                TravelPlane_Twitter,
                height: 40,
                width: 40,
              ).paddingLeft(spacing_twinty),
            ],
          ).paddingOnly(
            top: spacing_twinty,
          )
        ],
      ).paddingSymmetric(
          horizontal: spacing_standard_new, vertical: spacing_twinty),
    );
  }
}
