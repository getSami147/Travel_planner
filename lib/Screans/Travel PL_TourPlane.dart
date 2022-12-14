import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/Screans/Travel%20PL_Sub_TourPlane.dart';
import 'package:travel_plane/utils/TravelPlane%20Colors.dart';
import 'package:travel_plane/utils/TravelPlane%20Widget.dart';

import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Images.dart';
import '../utils/TravelPlane Strings.dart';

class TourPlane extends StatelessWidget {
  const TourPlane({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(TravelPlane_Pakistan,
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
              fontSize: spacing_standard_new,
              fontWeight: FontWeight.w400,
              color: TravelPlane_whiteColor)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  TravelPlane_fasal_majid,
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.width * 0.53,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.53,
                  width: MediaQuery.of(context).size.width,
                  color: blackColor.withOpacity(0.3),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    text(TourPlane_Hide,
                        fontSize: textSizelittleBig,
                        fontWeight: FontWeight.w700,
                        textColor: TravelPlane_whiteColor),
                    text(TourPlane_BannerDetails,
                            fontSize: textSizeSMedium,
                            textColor: TravelPlane_whiteColor)
                        .paddingTop(spacing_middle),
                    text(TourPlane_BannerDetails2,
                            fontSize: textSizeSMedium,
                            textColor: TravelPlane_whiteColor)
                        .paddingTop(spacing_control)
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text(
                  TravelPlane_Pakistan,
                  fontSize: textSizeLargeMedium,
                  fontWeight: FontWeight.w600,
                ).paddingTop(spacing_twinty),
                text(TourPlane_All_Places,
                        fontSize: textSizeSmall,
                        maxLine: 2,
                        textColor: TravelPlane_AppBarColor)
                    .paddingTop(spacing_middle),
                text(
                  TourPlane_Description,
                  fontSize: textSizeSMedium,
                  fontWeight: FontWeight.w600,
                ).paddingTop(spacing_middle),
                text(
                  TourPlane_Descrip_text,
                  fontSize: textSizeSmall,
                  maxLine: 10,
                ).paddingTop(spacing_middle),
                text(
                  TourPlane_Descrip_text2,
                  fontSize: textSizeSmall,
                  maxLine: 5,
                ).paddingTop(spacing_twinty),
                text(
                  TourPlane_BestPlaces,
                  fontSize: textSizeSMedium,
                  fontWeight: FontWeight.w600,
                  maxLine: 2,
                ).paddingTop(spacing_twinty),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 200,
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return Card(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset(
                              TravelPlane_Istanbul,
                              height: MediaQuery.of(context).size.width * 0.5,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              height: 90,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color:
                                      TravelPlane_whiteColor.withOpacity(0.7)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    text(TourPlane_Place4,
                                        fontSize: textSizeSMedium,
                                        fontWeight: FontWeight.w600),
                                    text(Home_SpandingDays,
                                        fontSize: textsizeTen,
                                        fontWeight: FontWeight.w500),
                                    elevatedButton(Onpressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                Sub_TourPlane(),
                                          ));
                                    },
                                            height: 35,
                                            width: double.infinity,
                                            context,
                                            borderRadius: 5,
                                            backgroundColor:
                                                TravelPlane_AppBarColor,
                                            bodersideColor:
                                                TravelPlane_AppBarColor,
                                            text(Home_Expense,
                                                fontSize: textSizeSMedium,
                                                textColor:
                                                    TravelPlane_whiteColor))
                                        .paddingTop(3)
                                  ]).paddingOnly(
                                  top: 5,
                                  left: spacing_middle,
                                  right: spacing_middle),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ).paddingTop(spacing_control)
              ],
            ).paddingSymmetric(horizontal: spacing_twinty)
          ],
        ),
      ),
    );
  }
}
