import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/Screans/Travel%20PL_PayAmount.dart';

import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Images.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  String? selectedIndex = 'Master card';
  List<String> listOfCountries = [
    'Master card',
    'Visa Card',
    'Paypal Card',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TravelPlane_whiteColor,
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
        TravelPlane_OrderDetails,
        textColor: white,
        titleTextStyle:
            TextStyle(fontWeight: FontWeight.w400, fontSize: textSizeMedium),
        color: TravelPlane_AppBarColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OrderTile(
                  svgPicture: TravelPlane_ic_OrderList,
                  Title: CheckOut_OrderID,
                  SubTitle: CheckOut_Subtitle,
                  Trailing: CheckOut_View,
                ).paddingTop(spacing_twinty),
                text(CheckOut_BillingSummary, fontWeight: FontWeight.w600)
                    .paddingTop(spacing_standard_new),
                Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: textPrimaryColor.withOpacity(.5),
                          spreadRadius: -10,
                          blurRadius: 30,
                          offset: Offset(0, 10))
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Build_BillingSumary(
                        Name: CheckOut_Order_ID,
                        Value: CheckOut_OderId_No,
                      ),
                      Build_BillingSumary(
                        Name: CheckOut_NumberOfDays,
                        Value: CheckOut_DefineDays,
                      ),
                      Build_BillingSumary(
                        Name: CheckOut_Charges,
                        Value: CheckOut_ChargesPrice,
                        Valtextcolor: TravelPlane_AppBarColor,
                      ),
                      Build_BillingSumary(
                        Name: CheckOut_Tax_Text,
                        Value: CheckOut_Tax,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Build_BillingSumary(
                        Name: CheckOut_Total_Text,
                        Value: CheckOut_Total,
                        ValfontWeight: FontWeight.w500,
                        NfontWeight: FontWeight.w500,
                        Ntextcolor: TravelPlane_AppBarColor,
                        Valtextcolor: TravelPlane_AppBarColor,
                      ),
                    ],
                  ).paddingSymmetric(
                      horizontal: spacing_twinty, vertical: spacing_middle),
                ).paddingTop(
                  spacing_standard_new,
                ),
                text(CheckOut_PaymentMethodT, fontWeight: FontWeight.w500)
                    .paddingTop(spacing_thirty),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: TravelPlane_whiteColor,
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff252525).withOpacity(0.10),
                            blurRadius: 24,
                            offset: Offset(0, 4))
                      ]),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      icon: SvgPicture.asset(TravelPlane_ic_arrow_Down_ios)
                          .paddingRight(spacing_standard_new),
                      borderRadius: BorderRadius.circular(10),
                      isExpanded: true,
                      value: selectedIndex,
                      items: listOfCountries.map((e) {
                        return DropdownMenuItem(
                          value: e,
                          child: text(e, fontSize: textSizeSMedium)
                              .paddingLeft(spacing_standard_new),
                        );
                      }).toList(),
                      onChanged: (dynamic value) {
                        setState(() {
                          selectedIndex = value;
                        });
                      },
                    ),
                  ),
                ).paddingTop(spacing_middle),
              ],
            ),
          )),
          elevatedButton(
              context,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  text(PayAmount_Pay),
                ],
              ),
              height: 60,
              width: double.infinity, Onpressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                backgroundColor: redColor,
                enableDrag: true,
                isScrollControlled: true,
                context: context,
                builder: (context) => Container(
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(30)),
                      height: MediaQuery.of(context).size.height * 0.92,
                      width: double.infinity,
                      child: PayAmount(),
                    ));
          }, borderRadius: 10, backgroundColor: TravelPlane_AppBarColor)
        ],
      ).paddingOnly(
          left: spacing_standard_new,
          right: spacing_standard_new,
          bottom: spacing_thirty),
    );
  }
}

class OrderTile extends StatelessWidget {
  String? svgPicture;
  String? Title;
  String? SubTitle;
  String? Trailing;
  Color? TrailingTextColor;
  OrderTile(
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
          Container(
            alignment: Alignment.center,
            height: 20,
            width: 60,
            child: text(Trailing,
                fontSize: textsizeTen, textColor: TrailingTextColor),
            decoration: BoxDecoration(
                color: TravelPlane_OderContainer_Color,
                borderRadius: BorderRadius.circular(3)),
          ),
        ],
      ).paddingSymmetric(horizontal: spacing_middle, vertical: spacing_middle),
    );
  }
}

class Build_BillingSumary extends StatelessWidget {
  String? Name;
  String? Value;
  Color? Ntextcolor;
  Color? Valtextcolor;
  FontWeight? ValfontWeight;
  FontWeight? NfontWeight;

  Build_BillingSumary(
      {Key? key,
      this.Name,
      this.Valtextcolor,
      this.NfontWeight,
      this.ValfontWeight,
      this.Ntextcolor,
      this.Value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        text(Name,
            fontSize: textSizeSmall,
            textColor: Ntextcolor,
            fontWeight: NfontWeight),
        text(Value,
            fontSize: textSizeSmall,
            textColor: Valtextcolor,
            fontWeight: ValfontWeight),
      ],
    ).paddingTop(6);
  }
}
