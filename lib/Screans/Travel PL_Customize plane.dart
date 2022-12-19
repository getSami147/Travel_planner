
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/Screans/Travel%20PL_CheckOut.dart';
import 'package:travel_plane/Screans/Travel%20PL_Customize1st.dart';
import 'package:travel_plane/Screans/Travel%20PL_Customize2nd.dart';
import 'package:travel_plane/Screans/Travel%20PL_Customize3rd.dart';
import 'package:travel_plane/Screans/Travel%20PL_Customize4th.dart';
import 'package:travel_plane/Screans/Travel%20PL_Customize5th.dart';
import 'package:travel_plane/Screans/Travel%20PL_Customize6th.dart';
import 'package:travel_plane/Screans/Travel%20PL_Customize7th.dart';
import 'package:travel_plane/Screans/Travel%20PL_Customize8th.dart';
import 'package:travel_plane/utils/TravelPlane%20Strings.dart';

import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Widget.dart';
import 'Travel PL_Customize10th.dart';
import 'Travel PL_Customize11th.dart';
import 'Travel PL_Customize12th.dart';
import 'Travel PL_Customize13th.dart';
import 'Travel PL_Customize14th.dart';
import 'Travel PL_Customize15th.dart';
import 'Travel PL_Customize16th.dart';
import 'Travel PL_Customize9th.dart';

////
class CustomizePlane extends StatefulWidget {
  const CustomizePlane({super.key});

  @override
  State<CustomizePlane> createState() => _CustomizePlaneState();
}

class _CustomizePlaneState extends State<CustomizePlane>
    with SingleTickerProviderStateMixin {
  var initialValue = 0;
  PageController _pageController = PageController();
  List<Widget> pages = [];
  final _kDuration = Duration(milliseconds: 300);
  final _kCurve = Curves.ease;

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        initialValue = _pageController.page!.toInt();
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
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
        TravelPlane_CustomizePlan,
        textColor: white,
        actions: [
          text(TravelPlane_Exit, textColor: white, fontSize: textSizeSMedium)
              .paddingOnly(top: spacing_middle, right: spacing_twinty),
        ],
        titleTextStyle:
            TextStyle(fontWeight: FontWeight.w400, fontSize: textSizeMedium),
        color: TravelPlane_AppBarColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  color: TravelPlane_AppBarColor,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: whiteColor,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 24,
                            offset: Offset(0, 4),
                            color: Color(0xff252525).withOpacity(0.15))
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  fontSize: textSizeSmall,
                                  color: TravelPlane_blackColor),
                              text: CustomizePlane_Question,
                              children: [
                            TextSpan(text: initialValue.toString()),
                            TextSpan(text: CustomizePlane_Total_Question),
                          ])).paddingOnly(top: 25, left: 10, right: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          for (int i = 0; i < 16; i++)
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              height: 4,
                              width: MediaQuery.of(context).size.width * .033,
                              decoration: BoxDecoration(
                                color: i == initialValue
                                    ? TravelPlane_AppBarColor
                                    : TravelPlane_textGreyColor,
                              ),
                            ),
                        ],
                      ).paddingOnly(
                          top: spacing_middle,
                          bottom: spacing_twinty,
                          left: spacing_middle,
                          right: spacing_middle),
                      Expanded(
                        child: PageView(
                          controller: _pageController,
                          scrollDirection: Axis.horizontal,
                          children: [
                            CustomizeFrist(),
                            Customize2nd(),
                            Customize3rd(),
                            Customize4th(),
                            Customize5th(),
                            Customize6th(),
                            Customize7th(),
                            Customize8th(),
                            Customize9th(),
                            Customize10th(),
                            Customize11th(),
                            Customize12th(),
                            Customize13th(),
                            Customize14th(),
                            Customize15th(),
                            Customize16th(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ).paddingSymmetric(horizontal: spacing_twinty),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          elevatedButton(
                  context,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      text(CustomizePlane_Next),
                      Icon(
                        Icons.arrow_forward,
                        size: 20,
                      )
                    ],
                  ),
                  height: 60,
                  width: double.infinity, Onpressed: () {
            setState(() {
              initialValue == 15
                  ? CheckOut().launch(context)
                  : _pageController.nextPage(
                      duration: _kDuration, curve: _kCurve);
            });
          }, borderRadius: 10, backgroundColor: TravelPlane_AppBarColor)
              .paddingOnly(
                  left: spacing_twinty,
                  right: spacing_twinty,
                  bottom: spacing_twinty)
        ],
      ),
    );
  }
}
