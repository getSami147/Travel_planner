import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Models/CheekBoxModel.dart';
import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Strings.dart';
import '../utils/TravelPlane Widget.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({Key? key}) : super(key: key);

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: SizedBox(
            width: 50,
            child: Divider(
              thickness: 5,
            ),
          ),
        ),
        Stack(
          alignment: Alignment.topRight,
          children: [
            Center(
              child: text(
                Search_Filter,
                fontSize: textSizeLargeMedium,
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.close,
                )),
          ],
        ),
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(Search_Sortby, fontWeight: FontWeight.w600)
                  .paddingLeft(spacing_standard_new),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: checkBoxModel.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Theme(
                        data: Theme.of(context).copyWith(
                          unselectedWidgetColor: TravelPlane_textGreyColor,
                        ),
                        child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          activeColor: TravelPlane_AppBarColor,
                          value: checkBoxModel[index].isSelected,
                          onChanged: (bool? value) {
                            setState(() {
                              checkBoxModel[index].isSelected = value;
                            });
                          },
                        ),
                      ),
                      text(checkBoxModel[index].title,
                          fontSize: textSizeSMedium)
                    ],
                  );
                },
              ),
              text(Search_Catagory, fontWeight: FontWeight.w600)
                  .paddingOnly(left: spacing_twinty, top: spacing_standard_new),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: checkBoxModel2.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Theme(
                        data: Theme.of(context).copyWith(
                          unselectedWidgetColor: TravelPlane_textGreyColor,
                        ),
                        child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          activeColor: TravelPlane_AppBarColor,
                          value: checkBoxModel2[index].isSelected,
                          onChanged: (bool? value) {
                            setState(() {
                              checkBoxModel2[index].isSelected = value;
                            });
                          },
                        ),
                      ),
                      text(checkBoxModel2[index].titleBox2,
                          fontSize: textSizeSMedium)
                    ],
                  );
                },
              ),
              text(Search_Brand, fontWeight: FontWeight.w600)
                  .paddingOnly(left: spacing_twinty, top: spacing_standard_new),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: checkBoxModel3.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Theme(
                        data: Theme.of(context).copyWith(
                          unselectedWidgetColor: TravelPlane_textGreyColor,
                        ),
                        child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          activeColor: TravelPlane_AppBarColor,
                          value: checkBoxModel3[index].isSelected,
                          onChanged: (bool? value) {
                            setState(() {
                              checkBoxModel3[index].isSelected = value;
                            });
                          },
                        ),
                      ),
                      text(checkBoxModel3[index].titleBox3,
                          fontSize: textSizeSMedium)
                    ],
                  );
                },
              ),
            ],
          ),
        ))
      ],
    );
  }
}
