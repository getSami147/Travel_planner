import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/Screans/Travel%20PL_SearchPage.dart';
import 'package:travel_plane/Screans/Travel%20PL_Explore%20Page.dart';
import 'package:travel_plane/Screans/Travel%20PL_Home%20Page.dart';
import 'package:travel_plane/Screans/Travel%20PL_Order%20Page.dart';
import 'package:travel_plane/Screans/Travel%20PL_Profile%20Page.dart';
import 'package:travel_plane/utils/TravelPlane%20Colors.dart';
import 'package:travel_plane/utils/TravelPlane%20Images.dart';
import 'package:travel_plane/utils/TravelPlane%20Widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 1;
  List Pages = [
    ExplorePage(),
    HomePage(),
    SearchPage(),
    OrdersPage(),
    ProfilePage(),
  ];
  // List of SVG images for Icons ...........................................>>>
  List<String> navbarIconsSvgs = [
    TravelPlane_ic_Exolore,
    TravelPlane_ic_Home,
    TravelPlane_ic_Search,
    TravelPlane_ic_Orders,
    TravelPlane_ic_Profile,
  ];
  List widgets = <Widget>[
    text('Explore', fontWeight: FontWeight.w500),
    text('Home', fontWeight: FontWeight.w500),
    text('Search', fontWeight: FontWeight.w500),
    text('Order', fontWeight: FontWeight.w500),
    text('Profile', fontWeight: FontWeight.w500),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Bottom Navigation Bar ===================================================>>>
      bottomNavigationBar: Container(
        decoration: boxDecorationDefault(
            borderRadius: radius(0), color: context.cardColor),
        padding: EdgeInsets.only(
            bottom: 10, left: 20, right: 20), // Bottom Navigation Bar Sized
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // Calling Icons List ======>>>
          children: navbarIconsSvgs.map(
            //Calling IocnsList ======>>>
            (e) {
              int i = navbarIconsSvgs.indexOf(e);
              return AnimatedContainer(
                duration: Duration(milliseconds: 250),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Selected Tab =====>>>
                    Container(
                      width: 45,
                      height: 5,
                      decoration: BoxDecoration(
                        color: TravelPlane_AppBarColor,
                        borderRadius: radiusOnly(bottomLeft: 5, bottomRight: 5),
                      ),
                    ).visible(i == selectedIndex),

                    IconButton(
                      icon: SvgPicture.asset(
                        e,
                        height: 22,
                        width: 22,
                        color: i == selectedIndex
                            ? TravelPlane_AppBarColor
                            : Colors.blueGrey[300],
                      ),
                      onPressed: () {
                        selectedIndex = i;

                        setState(() {});
                      },
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
      body: PageView(
        children: [Pages[selectedIndex]],
      ),
    );
  }
}
