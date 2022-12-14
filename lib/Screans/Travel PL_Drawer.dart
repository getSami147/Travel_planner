import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';

import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Images.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

import 'Travel PL_Profile Page.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

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
        TravelPlane_Menu,
        textColor: white,
        titleTextStyle:
            TextStyle(fontWeight: FontWeight.w400, fontSize: textSizeMedium),
        color: TravelPlane_AppBarColor,
      ),
      body: Container(
        width: double.infinity,
        child: Drawer(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 42,
                      backgroundColor: TravelPlane_AppBarColor,
                      child: ClipOval(
                          child: Image.asset(
                        TravelPlane_DrawerProfile,
                        height: 75,
                        width: 75,
                        fit: BoxFit.cover,
                      )),
                    ).paddingTop(spacing_thirty),
                  ),
                  Center(
                    child: text(Drawer_PersonName,
                            fontSize: textSizeNormal,
                            fontWeight: FontWeight.w500)
                        .paddingTop(spacing_twinty),
                  ),
                  Build_DrawerList(
                    Title: Drawer_MyProfile,
                    OnPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                          ));
                    },
                  ).paddingTop(spacing_middle),
                  Build_DrawerList(
                    Title: Drawer_Mage_Itinerary,
                    OnPressed: () {},
                  ),
                  Build_DrawerList(
                    Title: Drawer_Custom_Itinerary,
                    OnPressed: () {},
                  ),
                  Build_DrawerList(
                    Title: Drawer_WhyUse,
                    OnPressed: () {},
                  ),
                  Build_DrawerList(
                    Title: Drawer_Free_Travel,
                    OnPressed: () {},
                  ),
                  Build_DrawerList(
                    Title: Drawer_About,
                    OnPressed: () {},
                  ),
                  Build_DrawerList(
                    Title: Drawer_SignOut,
                    OnPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: SizedBox(
                                  height: 270,
                                  width: 340,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: TravelPlane_AppBarColor
                                                .withOpacity(0.2)),
                                        child: SvgPicture.asset(
                                          TravelPlane_ic_Logout,
                                          height: 35,
                                          width: 35,
                                        ),
                                      ),
                                      text(SignOut_Conform,
                                              isCentered: true,
                                              maxLine: 2,
                                              fontSize: textSizeLargeMedium,
                                              fontWeight: FontWeight.w500)
                                          .paddingSymmetric(
                                              horizontal: 30,
                                              vertical: spacing_twinty),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          elevatedButton(Onpressed: () {
                                            Navigator.pop(context);
                                          },
                                              height: 45,
                                              width: 130,
                                              context,
                                              borderRadius: 8,
                                              backgroundColor: blackColor,
                                              bodersideColor: black,
                                              text(SignOut_CENCLE,
                                                  textColor:
                                                      TravelPlane_whiteColor)),
                                          elevatedButton(Onpressed: () {
                                            Navigator.pop(context);
                                          },
                                              height: 45,
                                              width: 130,
                                              context,
                                              borderRadius: 8,
                                              backgroundColor: redColor,
                                              bodersideColor: Color(0xffFF001F),
                                              text(SignOut_LOGOUT,
                                                  textColor:
                                                      TravelPlane_whiteColor)),
                                        ],
                                      ).paddingTop(spacing_middle)
                                    ],
                                  ).paddingSymmetric(
                                      horizontal: spacing_standard_new,
                                      vertical: spacing_twinty),
                                ),
                              ));
                    },
                  ),
                ],
              ).paddingSymmetric(horizontal: spacing_twinty),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Build_DrawerList extends StatelessWidget {
  String? Title;
  VoidCallback? OnPressed;
  Build_DrawerList({Key? key, this.Title, this.OnPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text(
            Title,
          ),
          SvgPicture.asset(
            TravelPlane_ic_arrow_farward_ios,
            height: 12,
            width: 12,
          )
        ],
      ).paddingTop(spacing_thirty),
    );
  }
}
