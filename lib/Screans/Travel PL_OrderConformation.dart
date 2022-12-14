import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/Screans/Travel%20PL_Home%20Page.dart';
import 'package:travel_plane/Screans/Travel%20PL_OrderFailed.dart';
import 'package:travel_plane/utils/TravelPlane%20Widget.dart';

import '../utils/TravelPlane Colors.dart';
import '../utils/TravelPlane Constant.dart';
import '../utils/TravelPlane Images.dart';
import '../utils/TravelPlane Strings.dart';

class OrderConformation extends StatelessWidget {
  const OrderConformation({super.key});

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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OrderFailed(),
                          ));
                    },
                    child: text(PayAmount_OderPlaced,
                            maxLine: 3,
                            isCentered: true,
                            fontSize: textSizeLarge,
                            fontWeight: FontWeight.w700)
                        .paddingOnly(
                      top: spacing_xxLarge,
                      left: spacing_twinty,
                      right: spacing_twinty,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      //  showDialog box download..............................>>>
                      showDialog(
                          context: context,
                          builder: (context) => Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: SizedBox(
                                  height: 180,
                                  width: 330,
                                  child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          text(Download_textAlrt,
                                                  isCentered: true,
                                                  maxLine: 3,
                                                  fontSize: textSizeLargeMedium,
                                                  fontWeight: FontWeight.w500)
                                              .paddingSymmetric(
                                                  horizontal: spacing_middle,
                                                  vertical: spacing_middle),
                                          elevatedButton(
                                              height: 45,
                                              width: double.infinity,
                                              Onpressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      OrderConformation(),
                                                ));
                                          },
                                              context,
                                              borderRadius: 8,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SvgPicture.asset(
                                                      TravelPlane_ic_download),
                                                  text(Download_Download,
                                                          fontSize:
                                                              textSizeSMedium,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          textColor:
                                                              TravelPlane_whiteColor)
                                                      .paddingLeft(
                                                          spacing_middle),
                                                ],
                                              )).paddingTop(spacing_middle)
                                        ],
                                      ).paddingSymmetric(
                                          horizontal: spacing_twinty,
                                          vertical: spacing_twinty),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(
                                            Icons.close,
                                            size: 20,
                                          )),
                                    ],
                                  ),
                                ),
                              ));
                    },
                    child: text(
                      PayAmount_Thanks,
                      fontSize: textSizeSMedium,
                    ).paddingTop(spacing_middle),
                  )
                ],
              ),
            ),
          ),
          elevatedButton(
            context,
            text(PayAmount_BackHome),
            height: 60,
            width: double.infinity,
            borderRadius: 10,
            Onpressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            },
          )
        ],
      ).paddingSymmetric(
          horizontal: spacing_standard_new, vertical: spacing_thirty),
    );
  }
}
