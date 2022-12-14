import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_plane/Screans/Travel%20PL_OrderConformation.dart';
import 'package:travel_plane/utils/TravelPlane%20Constant.dart';

import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Images.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

import 'package:nb_utils/nb_utils.dart';

class PayAmount extends StatefulWidget {
  const PayAmount({super.key});

  @override
  State<PayAmount> createState() => _PayAmountState();
}

class _PayAmountState extends State<PayAmount> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: 50,
            child: Divider(
              thickness: 5,
            ),
          ),
        ).paddingTop(spacing_middle),
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Center(
                      child: text(PayAmount_PayAmount,
                          fontSize: textSizeLargeMedium)),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close)),
                ],
              ),
              Image.asset(
                TravelPlane_Credit_card,
                height: MediaQuery.of(context).size.width * 0.56,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ).paddingTop(textSizeLarge),
              Column(
                children: [
                  formField(
                    context,
                    PayAmount_NameOnCard,
                    prefixIcon:
                        Icon(Icons.person, color: TravelPlane_AppBarColor),
                  ),
                  formField(
                    context,
                    PayAmount_CardNumber,
                    prefixIcon:
                        Icon(Icons.payment, color: TravelPlane_AppBarColor),
                  ).paddingTop(spacing_standard_new),
                  Row(
                    children: [
                      Expanded(
                        child: formField(
                          context,
                          PayAmount_Month_Year,
                          prefixIcon: Icon(Icons.calendar_month,
                              color: TravelPlane_AppBarColor),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: formField(
                          context,
                          PayAmount_CVV,
                          prefixIcon: Icon(
                            Icons.lock,
                            color: TravelPlane_AppBarColor,
                          ),
                        ),
                      ),
                    ],
                  ).paddingTop(spacing_standard_new)
                ],
              ).paddingSymmetric(
                horizontal: spacing_middle,
              )
            ],
          ),
        )),
        elevatedButton(context, text(PayAmount_Pay),
                height: 60, width: double.infinity, Onpressed: () {
          showDialog(
              context: context,
              builder: (context) => Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: SizedBox(
                      height: 270,
                      width: 340,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    TravelPlane_AppBarColor.withOpacity(0.2)),
                            child: SvgPicture.asset(
                              TravelPlane_ic_Payment_Ready,
                              height: 35,
                              width: 35,
                            ),
                          ),
                          text(PayAmount_PaymentConform,
                                  isCentered: true,
                                  maxLine: 2,
                                  fontSize: textSizeLargeMedium,
                                  fontWeight: FontWeight.w500)
                              .paddingSymmetric(
                                  horizontal: 30, vertical: spacing_twinty),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  text(PayAmount_CANCLE,
                                      fontSize: textSizeSmall,
                                      fontWeight: FontWeight.w500,
                                      textColor: TravelPlane_whiteColor)),
                              elevatedButton(Onpressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => OrderConformation(),
                                    ));
                              },
                                  height: 45,
                                  width: 130,
                                  context,
                                  borderRadius: 8,
                                  backgroundColor: TravelPlane_AppBarColor,
                                  bodersideColor: TravelPlane_AppBarColor,
                                  text(PayAmount_PAY,
                                      fontSize: textSizeSmall,
                                      fontWeight: FontWeight.w500,
                                      textColor: TravelPlane_whiteColor)),
                            ],
                          ).paddingTop(spacing_middle)
                        ],
                      ).paddingSymmetric(
                          horizontal: spacing_standard_new,
                          vertical: spacing_twinty),
                    ),
                  ));
        }, borderRadius: 10, backgroundColor: TravelPlane_AppBarColor)
            .paddingTop(spacing_thirty)
      ],
    ).paddingOnly(
        left: spacing_standard_new,
        right: spacing_standard_new,
        bottom: spacing_thirty);
  }
}
