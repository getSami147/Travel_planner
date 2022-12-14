import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/utils/TravelPlane%20Widget.dart';

import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Images.dart';
import '../utils/TravelPlane Strings.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        elevation: 0,
        backWidget: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            size: 18,
          ),
        ),
        TravelPlane_Orders,
        textColor: white,
        titleTextStyle:
            TextStyle(fontWeight: FontWeight.w400, fontSize: textSizeMedium),
        color: TravelPlane_AppBarColor,
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
                labelStyle: TextStyle(
                    fontSize: textSizeMedium, fontWeight: FontWeight.w500),
                labelColor: TravelPlane_Tab_indicatorColor,
                unselectedLabelColor: TravelPlane_TextDarkGrey,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: TravelPlane_Tab_indicatorColor,
                indicatorPadding:
                    EdgeInsets.symmetric(horizontal: spacing_standard_new),
                padding: EdgeInsets.symmetric(horizontal: spacing_thirty),
                indicatorWeight: 3,
                tabs: [
                  Tab(
                    text: Orderpage_ReadyMade,
                  ),
                  Tab(
                    text: Orderpage_FullyCustom,
                  )
                ]).paddingTop(spacing_middle),
            Expanded(
                child: TabBarView(children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: 2,
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
                                  height:
                                      MediaQuery.of(context).size.width * 0.5,
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  height: 90,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: TravelPlane_whiteColor.withOpacity(
                                          0.7)),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                bodersideColor:
                                                    TravelPlane_AppBarColor,
                                                text(Download_Download,
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
                    )
                  ],
                ).paddingAll(spacing_standard_new),
              ),
              Column(
                children: [
                  text('Secound tab bar is empty for Now'),
                ],
              ).paddingAll(spacing_standard_new),
            ]))
          ],
        ),
      ),
    );
  }
}
