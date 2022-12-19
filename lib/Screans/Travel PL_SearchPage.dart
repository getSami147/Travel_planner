import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/utils/TravelPlane%20Colors.dart';
import 'package:travel_plane/utils/TravelPlane%20Widget.dart';

import '../utils/TravelPlane Constant.dart';
import 'Travel PL_Search Filter.dart';

////////////////////
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> RecentSearch = [
      'Hills',
      'Mangoes',
      'Beaches',
      'Lakes',
      'Pakistan',
      'Dubai',
      'Qatar',
      'Denmark',
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TravelPlane_AppBarColor,
        title: formField(
          context,
          "Search Tourism Spots here",
          textcolor: TravelPlane_textGreyColor,
          filledcolor: TravelPlane_AppBarColor,
          prefixIcon: Icon(
            Icons.arrow_back_ios,
            color: whiteColor,
            size: 20,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(30))),
                  isScrollControlled: true,
                  enableDrag: true,
                  context: context,
                  builder: (context) => Container(
                        height: MediaQuery.of(context).size.height * 0.92,
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: SearchFilter(),
                      ));
            },
            icon: Icon(
              Icons.filter_alt_outlined,
              color: TravelPlane_whiteColor,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text(
            'Recent Searches',
            fontSize: textSizeMedium,
            fontWeight: FontWeight.w600,
          ).paddingTop(spacing_twinty),
          Wrap(
            spacing: 15,
            children: [
              ...List.generate(
                  RecentSearch.length,
                  (index) => OutlinedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                  color:
                                      TravelPlane_blackColor.withOpacity(0.2))),
                        ),
                        onPressed: () {},
                        child: text(
                          RecentSearch[index],
                          fontSize: textSizeSmall,
                          textColor: TravelPlane_blackColor,
                        ),
                      ))
            ],
          ).paddingTop(spacing_twinty),
        ],
      ).paddingSymmetric(horizontal: spacing_standard_new),
    );
  }
}
