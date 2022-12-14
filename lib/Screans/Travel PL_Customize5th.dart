import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/Models/Radio%20Model.dart';

import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class Customize5th extends StatefulWidget {
  const Customize5th({super.key});

  @override
  State<Customize5th> createState() => _Customize5thState();
}

class _Customize5thState extends State<Customize5th> {
  var groupvalues = 1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: text(CustomizePlane_Transporation,
                  maxLine: 10, isCentered: true)),
          ListView.builder(
            itemCount: radioTransperation_Model.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Radio(
                    activeColor: TravelPlane_AppBarColor,
                    value: radioTransperation_Model[index].Value,
                    groupValue: groupvalues,
                    onChanged: (dynamic value) {
                      setState(() {});
                      groupvalues = value;
                    },
                  ),
                  Expanded(
                    child: text(radioTransperation_Model[index].RadioText,
                        fontSize: textSizeSMedium, maxLine: 5),
                  )
                ],
              );
            },
          ).paddingTop(spacing_thirty),
        ],
      ).paddingSymmetric(horizontal: spacing_middle),
    );
  }
}
