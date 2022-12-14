import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/utils/TravelPlane%20Colors.dart';

import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class Customize2nd extends StatefulWidget {
  const Customize2nd({super.key});

  @override
  State<Customize2nd> createState() => _Customize2ndState();
}

class _Customize2ndState extends State<Customize2nd> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  @override
  void initState() {
    super.initState();

    print(selectedTime.period);
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        helpText: 'Select your Booking date',
        cancelText: 'Not Now',
        confirmText: "Book",
        fieldLabelText: 'Booking Date',
        fieldHintText: 'Month/Date/Year',
        errorFormatText: 'Enter valid date',
        errorInvalidText: 'Enter date in valid range',
        context: context,
        builder: (BuildContext context, Widget? child) {
          return CustomTheme(
            child: child,
          );
        },
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        print(picked);
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: text(CustomizePlane_distenation)),
          Boder_Dropdown().paddingTop(spacing_twinty),
          Row(
            children: [
              IconButton(
                  color: TravelPlane_AppBarColor,
                  onPressed: () {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        isScrollControlled: true,
                        enableDrag: true,
                        context: context,
                        builder: (context) => Container(
                              height: MediaQuery.of(context).size.height * 0.36,
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text(CustomizePlane_Add_Country,
                                      fontWeight: FontWeight.w500),
                                  text(CustomizePlane_AddCountryL,
                                          maxLine: 5, fontSize: textSizeSMedium)
                                      .paddingTop(spacing_large),
                                  formField(
                                    context,
                                    'South Africa',
                                    textcolor: blackColor,
                                  ).paddingTop(spacing_large),
                                  elevatedButton(
                                    height: 56,
                                    width: double.infinity,
                                    Onpressed: () {},
                                    context,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        text(CustomizePlane_Next),
                                        Icon(
                                          Icons.arrow_forward,
                                          size: 20,
                                        )
                                      ],
                                    ),
                                  ).paddingTop(spacing_thirty)
                                ],
                              ).paddingSymmetric(
                                  horizontal: spacing_standard_new,
                                  vertical: spacing_thirty),
                            ));
                  },
                  icon: Icon(
                    Icons.add,
                    color: TravelPlane_AppBarColor,
                  )),
              text(CustomizePlane_Add_Country, fontSize: textSizeSmall),
            ],
          ),
          Center(child: text(CustomizePlane_tripTime))
              .paddingTop(spacing_xxLarge),
          formField(
            context,
            suffixIcon: IconButton(
              icon: Icon(Icons.calendar_month, color: TravelPlane_AppBarColor),
              onPressed: () {
                _selectDate(context);
              },
            ),
            CustomizePlane_Date_to + "${selectedDate.toLocal()}".split(' ')[0],
          ).paddingTop(spacing_standard_new),
          formField(
            context,
            suffixIcon: IconButton(
              icon: Icon(Icons.calendar_month, color: TravelPlane_AppBarColor),
              onPressed: () {
                _selectDate(context);
              },
            ),
            CustomizePlane_Date_to + "${selectedDate.toLocal()}".split(' ')[0],
          ).paddingTop(spacing_standard_new),
        ],
      ).paddingSymmetric(horizontal: spacing_middle),
    );
  }
}
