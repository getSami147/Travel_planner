import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/Screans/Travel%20PL_OrderStatus.dart';
import 'package:travel_plane/Screans/Travel%20PL_PaymentHistory.dart';
import 'package:travel_plane/utils/TravelPlane%20Widget.dart';

import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Images.dart';
import '../utils/TravelPlane Strings.dart';
import 'Travel PL_Drawer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        Profile_Profile,
        backWidget: IconButton(
          iconSize: 18,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop;
          },
        ),
        textColor: white,
        titleTextStyle:
            TextStyle(fontWeight: FontWeight.w400, fontSize: textSizeMedium),
        color: TravelPlane_AppBarColor,
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            ).paddingTop(spacing_Fifty),
          ),
          Center(
            child: text(Drawer_PersonName,
                    fontSize: textSizeNormal, fontWeight: FontWeight.w500)
                .paddingTop(spacing_standard_new),
          ),
          Center(
            child: elevatedButton(Onpressed: () {
              Navigator.pop(context);
            },
                    height: 32,
                    width: 120,
                    context,
                    borderRadius: 5,
                    backgroundColor: TravelPlane_AppBarColor,
                    bodersideColor: TravelPlane_AppBarColor,
                    text(Profile_EditProfile,
                        fontSize: textSizeSMedium,
                        textColor: TravelPlane_whiteColor))
                .paddingTop(spacing_middle),
          ),
          Build_DrawerList(
            Title: Profile_MyOrders,
            OnPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderStatus(),
                  ));
            },
          ),
          Build_DrawerList(
            Title: Profile_Payments,
            OnPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentsHistory(),
                  ));
            },
          ),
          text(Profile_Email, fontSize: textSizeSMedium)
              .paddingTop(spacing_thirty),
          text(Profile_Contact_No, fontSize: textSizeSMedium)
              .paddingTop(spacing_thirty),
        ]).paddingSymmetric(horizontal: spacing_twinty),
      ),
    );
  }
}
