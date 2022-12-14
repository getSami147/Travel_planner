import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/Screans/Travel%20PL_CheckOut.dart';
import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Images.dart';
import '../utils/TravelPlane Strings.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(TravelPlane_OrderStatus,
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
              fontSize: textSizeMedium,
              fontWeight: FontWeight.w400,
              color: TravelPlane_whiteColor)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            OrderTile(
              svgPicture: TravelPlane_ic_OrderList,
              Title: CheckOut_OrderID,
              SubTitle: CheckOut_Subtitle,
              Trailing: OrderStatus_Pending,
              TrailingTextColor: TravelPlane_PaddingColor,
            ).paddingTop(spacing_middle),
            OrderTile(
              svgPicture: TravelPlane_ic_OrderList,
              Title: CheckOut_OrderID,
              SubTitle: CheckOut_Subtitle,
              Trailing: OrderStatus_Rejected,
              TrailingTextColor: TravelPlane_redColor,
            ).paddingTop(spacing_middle),
            OrderTile(
              svgPicture: TravelPlane_ic_OrderList,
              Title: CheckOut_OrderID,
              SubTitle: CheckOut_Subtitle,
              Trailing: OrderStatus_Accepted,
              TrailingTextColor: TravelPlane_green_Color,
            ).paddingTop(spacing_middle),
          ],
        ).paddingSymmetric(horizontal: spacing_twinty),
      ),
    );
  }
}
