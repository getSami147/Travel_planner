import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:flutter/material.dart';
import 'package:travel_plane/Screans/Travel%20PL_Dashboard.dart';
import 'package:travel_plane/Screans/Travel%20PL_Search%20Filter.dart';
import 'package:travel_plane/utils/TravelPlane%20Colors.dart';

import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Images.dart';
import '../utils/TravelPlane Widget.dart';

class Search extends SearchDelegate {
  var value = true;
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
//  Build "Actions" Performs On SearchBar.....................................................>>>
  @override
  List<Widget>? buildActions(BuildContext context) {
    return <Widget>[
      GestureDetector(
        onTap: () {
//   "BottamSheet" On SearchBar.................................................>>>
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
        child: SvgPicture.asset(TravelPlane_ic_Filter)
            .paddingRight(spacing_standard_new),
      )
    ];
  }

//  Build "Leading" Performs On SearchBar.....................................................>>>
  @override
  Widget buildLeading(BuildContext context) {
    <Widget>[];
    return GestureDetector(
      child: Icon(
        Icons.arrow_back_ios,
        color: TravelPlane_whiteColor,
        size: 20,
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Dashboard(),
            ));
      },
    );
  }

//  Build "No Result Found" On SearchBar.....................................................>>>
  @override
  Widget buildResults(BuildContext context) {
    return text(
      'No Result Found',
      fontSize: textSizeMedium,
      fontWeight: FontWeight.bold,
    ).paddingOnly(left: 15, top: 15);
  }

//  Build "Suggestion For Other Recent Searches" Body .....................................................>>>
  @override
  Widget buildSuggestions(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
