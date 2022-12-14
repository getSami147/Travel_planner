import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';

import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Images.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';
import 'Travel PL_Home Page.dart';

class OrderFailed extends StatelessWidget {
  const OrderFailed({super.key});

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
        TravelPlane_OrderConfirmation,
        textColor: white,
        titleTextStyle:
            TextStyle(fontWeight: FontWeight.w400, fontSize: textSizeMedium),
        color: TravelPlane_AppBarColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      TravelPlane_Payment_Done,
                      height: 250,
                      width: 250,
                    ),
                  ),
                  text(PayAmount_OderFailed,
                          maxLine: 3,
                          isCentered: true,
                          fontSize: textSizeLarge,
                          fontWeight: FontWeight.w700)
                      .paddingOnly(
                    top: spacing_xxLarge,
                    left: spacing_twinty,
                    right: spacing_twinty,
                  ),
                  text(PayAmount_SomethingWrong,
                          fontSize: textSizeSMedium,
                          maxLine: 5,
                          isCentered: true)
                      .paddingOnly(left: 60, right: 60, top: spacing_large)
                ],
              ),
            ),
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: text(PayAmount_BackHome,
                  textColor: TravelPlane_AppBarColor,
                  fontWeight: FontWeight.w500)),
        ],
      ).paddingSymmetric(
          horizontal: spacing_standard_new, vertical: spacing_thirty),
    );
  }
}
