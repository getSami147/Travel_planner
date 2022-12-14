import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/Screans/Travel%20PL_Drawer.dart';
import 'package:travel_plane/Screans/Travel%20PL_TourPlane.dart';
import 'package:travel_plane/utils/TravelPlane%20Strings.dart';
import 'package:travel_plane/utils/TravelPlane%20Widget.dart';
import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Images.dart';
import 'Travel PL_Notifications.dart';
import 'Travel PL_Customize plane.dart';
import 'Travel PL_Explore Page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        backgroundColor: TravelPlane_AppBarColor,
        elevation: 0,
        title: text(TravelPlane_Home),
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
              color: white,
            ).paddingRight(spacing_twinty),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HorizontalList(
              itemCount: 4,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    TravelPlane_asparag,
                    height: MediaQuery.of(context).size.width * 0.42,
                    width: MediaQuery.of(context).size.width * 0.89,
                    fit: BoxFit.cover,
                  ),
                ).paddingOnly(left: 15, top: spacing_standard_new);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(Home_Country,
                    fontSize: textSizeSMedium, fontWeight: FontWeight.w600),
                text(Home_View_All,
                    textColor: TravelPlane_AppBarColor,
                    fontSize: textSizeSmall,
                    fontWeight: FontWeight.w500)
              ],
            ).paddingOnly(
                top: spacing_twinty,
                left: spacing_twinty,
                right: spacing_twinty),
            HorizontalList(
              padding: EdgeInsets.symmetric(horizontal: 20),
              spacing: 18,
              itemCount: 12,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TourPlane(),
                              ));
                        },
                        child: Image.asset(
                          TravelPlane_Turkey,
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    text(TravelPlane_Pakistan, fontSize: textSizeSmall)
                  ],
                ).paddingTop(spacing_middle);
              },
            ),
            Build_CustomizP_Banner(
              OnPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomizePlane(),
                    ));
              },
            ).paddingOnly(
                top: spacing_twinty,
                left: spacing_twinty,
                right: spacing_twinty),
            text(Home_Title,
                    fontSize: textSizeSMedium, fontWeight: FontWeight.w600)
                .paddingOnly(
                    top: spacing_twinty,
                    left: spacing_twinty,
                    right: spacing_twinty),
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
                              color: TravelPlane_whiteColor.withOpacity(0.7)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text(Home_ISTANBUL,
                                    fontSize: textSizeSMedium,
                                    fontWeight: FontWeight.w600),
                                text(Home_SpandingDays,
                                    fontSize: textsizeTen,
                                    fontWeight: FontWeight.w500),
                                elevatedButton(
                                        Onpressed: () {},
                                        height: 35,
                                        width: double.infinity,
                                        context,
                                        borderRadius: 5,
                                        backgroundColor:
                                            TravelPlane_AppBarColor,
                                        bodersideColor: TravelPlane_AppBarColor,
                                        text(Home_Expense,
                                            fontSize: textSizeSMedium,
                                            textColor: TravelPlane_whiteColor))
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
            ).paddingSymmetric(horizontal: spacing_twinty)
          ],
        ),
      ),
    );
  }
}
