import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/Models/TourPlane%20Model.dart';
import 'package:travel_plane/utils/panel.dart';
import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class Sub_TourPlane extends StatefulWidget {
  const Sub_TourPlane({super.key});

  @override
  State<Sub_TourPlane> createState() => _Sub_TourPlaneState();
}

class _Sub_TourPlaneState extends State<Sub_TourPlane> {
  List<TourPlane> listTourPlane = getTourPlane();
  final pageController = PageController(initialPage: 0);
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // AppBar Start .........................................................>>>
        appBar: appBarWidget(TravelPlane_TourPlan,
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
        // Body Start .........................................................>>>

        body: SlidingUpPanel(
          isDraggable: false,
          minHeight: MediaQuery.of(context).size.height * .6,
          borderRadius: BorderRadius.circular(30),
          maxHeight: MediaQuery.of(context).size.height * .6,
          panel: Column(
            children: [
              SizedBox(
                width: 50,
                child: Divider(
                  thickness: 5,
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text(
                      TourPlane_Selected_Place,
                      fontSize: textSizeLargeMedium,
                      fontWeight: FontWeight.w600,
                    ).paddingTop(spacing_thirty),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text(
                              TourPlane_Country,
                              fontWeight: FontWeight.w600,
                              fontSize: textSizeSmall,
                            ),
                            text(
                              TourPlane_CountryName,
                              fontSize: textSizeSmall,
                            ),
                            text(
                              TourPlane_Budget,
                              fontWeight: FontWeight.w600,
                              fontSize: textSizeSmall,
                            ).paddingTop(spacing_middle),
                            text(
                              TourPlane_Budget_Value,
                              fontSize: textSizeSmall,
                            ),
                            text(
                              TourPlane_F_Level,
                              fontWeight: FontWeight.w600,
                              fontSize: textSizeSmall,
                            ).paddingTop(spacing_middle),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text(
                              TourPlane_Good_For,
                              fontWeight: FontWeight.w600,
                              fontSize: textSizeSmall,
                            ),
                            text(
                              TourPlane_GoodFor_Text,
                              fontSize: textSizeSmall,
                            ),
                            text(
                              TourPlane_Best_time,
                              fontWeight: FontWeight.w600,
                              fontSize: textSizeSmall,
                            ).paddingTop(spacing_middle),
                            text(
                              TourPlane_BestTime_text,
                              fontSize: textSizeSmall,
                            ),
                          ],
                        ),
                      ],
                    ),
                    text(
                      TourPlane_Description,
                      fontSize: textSizeSMedium,
                      fontWeight: FontWeight.w600,
                    ).paddingTop(spacing_standard_new),
                    text(TourPlane_details_txt,
                            fontSize: textSizeSmall, maxLine: 10)
                        .paddingTop(spacing_standard),
                    text(TourPlane_Descrip_text2,
                            fontSize: textSizeSmall, maxLine: 10)
                        .paddingTop(spacing_middle),
                  ],
                ),
              )),
              elevatedButton(context, text(TourPlane_Final_Price),
                  height: 60,
                  width: double.infinity,
                  Onpressed: () {},
                  borderRadius: 10,
                  backgroundColor: TravelPlane_AppBarColor)
            ],
          ).paddingOnly(
              left: spacing_twinty,
              right: spacing_twinty,
              bottom: spacing_twinty),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .35,
                    width: MediaQuery.of(context).size.width,
                    child: PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          currentpage = value;
                        });
                      },
                      itemCount: listTourPlane.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          listTourPlane[index].image.toString(),
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height * .35,
                          width: MediaQuery.of(context).size.width,
                        );
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < getTourPlane().length; i++)
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            height: 8,
                            width: i == currentpage ? 25 : 8,
                            decoration: BoxDecoration(
                                color: i == currentpage
                                    ? TravelPlane_whiteColor
                                    : TravelPlane_whiteColor,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
