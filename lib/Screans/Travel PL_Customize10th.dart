import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Models/Radio Model.dart';
import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class Customize10th extends StatefulWidget {
  const Customize10th({super.key});

  @override
  State<Customize10th> createState() => _Customize10thState();
}

class _Customize10thState extends State<Customize10th> {
  var groupvalues = 1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
              child: text(CustomizePlane_destination_option,
                      maxLine: 10, isCentered: true)
                  .paddingSymmetric(horizontal: spacing_middle)),
          ListView.builder(
            itemCount: destination_option_Model.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Radio(
                    activeColor: TravelPlane_AppBarColor,
                    value: destination_option_Model[index].Value,
                    groupValue: groupvalues,
                    onChanged: (dynamic value) {
                      setState(() {});
                      groupvalues = value;
                    },
                  ),
                  Expanded(
                    child: text(destination_option_Model[index].RadioText,
                        fontSize: textSizeSMedium, maxLine: 5),
                  )
                ],
              );
            },
          ).paddingTop(spacing_twinty),
        ],
      ).paddingSymmetric(horizontal: spacing_middle),
    );
  }
}
