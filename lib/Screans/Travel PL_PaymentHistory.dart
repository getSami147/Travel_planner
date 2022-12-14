import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';

import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Images.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class PaymentsHistory extends StatelessWidget {
  const PaymentsHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(TravelPlane_Payments,
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
            ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return PaymentTile(
                  svgPicture: TravelPlane_ic_Payment_Ready,
                  Title: CheckOut_OrderID,
                  SubTitle: CheckOut_Subtitle,
                  Trailing: Payment_Payment,
                  TrailingTextColor: TravelPlane_AppBarColor,
                ).paddingTop(spacing_middle);
              },
            )
          ],
        ).paddingSymmetric(
          horizontal: spacing_twinty,
        ),
      ),
    );
  }
}

class PaymentTile extends StatelessWidget {
  String? svgPicture;
  String? Title;
  String? SubTitle;
  String? Trailing;
  Color? TrailingTextColor;
  PaymentTile(
      {this.Title,
      this.Trailing,
      this.TrailingTextColor,
      this.svgPicture,
      this.SubTitle,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: TravelPlane_whiteColor,
          boxShadow: [
            BoxShadow(
                blurRadius: 30,
                color: Color(0xff252525).withOpacity(.10),
                offset: Offset(0, 4)),
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  svgPicture.toString(),
                  height: 20,
                  width: 20,
                  fit: BoxFit.contain,
                ),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    color: TravelPlane_OderContainer_Color,
                    shape: BoxShape.circle),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text(Title,
                      fontSize: textSizeSmall, fontWeight: FontWeight.w500),
                  text(
                    SubTitle,
                    fontSize: textsizeTen,
                  ).paddingTop(5),
                ],
              ).paddingLeft(spacing_middle),
            ],
          ),
          text(Trailing,
              fontSize: textSizeSMedium,
              fontWeight: FontWeight.w500,
              textColor: TrailingTextColor),
        ],
      ).paddingSymmetric(horizontal: spacing_middle, vertical: spacing_middle),
    );
  }
}
