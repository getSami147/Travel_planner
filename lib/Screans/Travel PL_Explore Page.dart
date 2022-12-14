import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/Screans/Travel%20PL_Notifications.dart';
import 'package:travel_plane/Screans/Travel%20PL_Customize%20plane.dart';
import 'package:travel_plane/Screans/Travel%20PL_Drawer.dart';
import 'package:travel_plane/utils/TravelPlane%20Colors.dart';
import 'package:travel_plane/utils/TravelPlane%20Constant.dart';
import 'package:travel_plane/utils/TravelPlane%20Images.dart';
import 'package:travel_plane/utils/TravelPlane%20Strings.dart';
import 'package:travel_plane/utils/TravelPlane%20Widget.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        backgroundColor: TravelPlane_AppBarColor,
        elevation: 0,
        title: text(TravelPlane_Explore),
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Notifications(),
                    ));
              },
              child: SvgPicture.asset(
                TravelPlane_bell,
              ).paddingRight(spacing_twinty))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Build_CustomizP_Banner(
              OnPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomizePlane(),
                    ));
              },
            ).paddingTop(spacing_twinty),
            text(Explore_Latest_TourPlans,
                    fontSize: textSizeSMedium, fontWeight: FontWeight.w600)
                .paddingTop(spacing_twinty),
            // List view ...............................................................>>
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 7,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Image.asset(
                      TravelPlane_Istanbul,
                      height: 85,
                      width: 85,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text(
                            Explore_CounryName,
                            fontSize: textSizeSMedium,
                            fontWeight: FontWeight.w500,
                          ),
                          text(
                            Explore_Description,
                            maxLine: 3,
                            fontSize: textSizeSmall,
                          ),
                          text(
                            Explore_Price,
                            textColor: TravelPlane_AppBarColor,
                            fontSize: textSizeSMedium,
                          ),
                        ],
                      ).paddingLeft(spacing_standard_new),
                    )
                  ],
                ).paddingTop(spacing_middle);
              },
            )
          ],
        ).paddingSymmetric(horizontal: spacing_twinty),
      ),
    );
  }
}

// ignore: must_be_immutable
class Build_CustomizP_Banner extends StatelessWidget {
  VoidCallback? OnPressed;
  Build_CustomizP_Banner({
    Key? key,
    this.OnPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnPressed,
      child: Container(
        height: MediaQuery.of(context).size.width * 0.18,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
            color: TravelPlane_AppBarColor.withOpacity(0.9),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                text(
                  Explore_Title,
                  textColor: white,
                  fontWeight: FontWeight.w600,
                ),
                text(
                  Explore_SubTitle,
                  textColor: white,
                  fontSize: textSizeSmall,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(TravelPlane_ic_Circular_arrow_outline)
                    .paddingRight(spacing_xxLarge),
              ],
            )
          ],
        ).paddingOnly(
            left: spacing_standard_new,
            top: spacing_middle,
            bottom: spacing_middle),
      ),
    );
  }
}
