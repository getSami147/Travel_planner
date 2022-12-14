import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        elevation: 0,
        TravelPlane_Payments,
        textColor: white,
        titleTextStyle:
            TextStyle(fontWeight: FontWeight.w400, fontSize: textSizeMedium),
        color: TravelPlane_AppBarColor,
      ),
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
