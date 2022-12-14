import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:travel_plane/store/AppStore.dart';
import 'package:travel_plane/utils/TravelPlane%20Colors.dart';
import 'package:travel_plane/utils/TravelPlane%20Constant.dart';
import 'package:travel_plane/utils/TravelPlane%20Strings.dart';

import '../main.dart';
import 'TravelPlane Images.dart';

// Elevated button Created.....................................>>>
Widget elevatedButton(BuildContext context, Widget widget,
    {Color? textColor = whiteColor,
    Color? backgroundColor = TravelPlane_AppBarColor,
    Color bodersideColor = TravelPlane_AppBarColor,
    VoidCallback? Onpressed,
    double? height = 40,
    double? width = 150,
    double borderRadius = 10}) {
  return SizedBox(
    height: height,
    width: width,
    child: ElevatedButton(
        onPressed: Onpressed,
        style: ElevatedButton.styleFrom(
          side: BorderSide(color: bodersideColor),
          textStyle: TextStyle(color: textColor),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius)),
          backgroundColor: backgroundColor,
        ),
        child: widget),
  );
}
// Elevated button .....................................>>>Finished

// Text Feild Created.....................................>>>
// ignore: must_be_immutable
class EditText extends StatefulWidget {
  var borderSide;
  IconData? suffixIcon;
  var isPassword;
  var isSecure;
  var fontSize;
  var textColor;
  var fontFamily;
  var text;
  var maxLine;
  var keyboardType;
  TextEditingController? mController;

  VoidCallback? onPressed;

  EditText(
    var this.borderSide, {
    var this.fontSize = textSizeMedium,
    this.suffixIcon,
    var this.textColor = textColorSecondary,
    var this.fontFamily = fontRegular,
    var this.isPassword = false,
    var this.isSecure = false,
    var this.text = "",
    var this.mController,
    var this.keyboardType,
    var this.maxLine = 1,
  });

  @override
  State<StatefulWidget> createState() {
    return EditTextState();
  }
}

class EditTextState extends State<EditText> {
  @override
  Widget build(BuildContext context) {
    if (!widget.isSecure) {
      return TextFormField(
        controller: widget.mController,
        obscureText: widget.isPassword,
        cursorColor: textGreenColor,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          filled: true,
          fillColor: whiteColor,
          //prefixIcon: Icon(su),
          contentPadding: const EdgeInsets.fromLTRB(20, 8, 4, 8),
          hintText: widget.text,
          hintStyle: primaryTextStyle(),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        maxLines: widget.maxLine,
        style: primaryTextStyle(),
      );
    } else {
      return TextField(
        controller: widget.mController,
        obscureText: widget.isPassword,
        cursorColor: colorPrimary,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                widget.isPassword = !widget.isPassword;
              });
            },
            child: Icon(
                widget.isPassword ? Icons.visibility_off : Icons.visibility),
          ),
          contentPadding: const EdgeInsets.fromLTRB(16, 8, 4, 8),
          hintText: widget.text,
          labelText: widget.text,
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: view_color, width: 0.0),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: view_color, width: 0.0),
          ),
        ),
        style: TextStyle(
            fontSize: widget.fontSize,
            color: textColorPrimary,
            fontFamily: widget.fontFamily),
      );
    }
  }
} // Text Feild Ended........................................................////

// Text ........................................................>>>
Widget text(
  String? text, {
  var isJastify = false,
  var fontWeight = FontWeight.w400,
  var fontSize = textSizeMedium,
  Color? textColor,
  var fontFamily,
  var isCentered = false,
  var maxLine = 1,
  var latterSpacing = 0.5,
  bool textAllCaps = false,
  var isLongText = false,
  bool lineThrough = false,
}) {
  return Text(
    textAllCaps ? text!.toUpperCase() : text!,
    textAlign: isCentered ? TextAlign.center : TextAlign.start,
    maxLines: isLongText ? null : maxLine,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: textColor,
      height: 1.5,
      letterSpacing: latterSpacing,
      decoration:
          lineThrough ? TextDecoration.lineThrough : TextDecoration.none,
    ),
  );
}

BoxDecoration boxDecoration(
    {double radius = 2,
    Color color = Colors.transparent,
    Color? bgColor,
    var showShadow = false}) {
  var appStore;
  return BoxDecoration(
    color: bgColor ?? appStore.scaffoldBackground,
    boxShadow: showShadow
        ? defaultBoxShadow(shadowColor: shadowColorGlobal)
        : [const BoxShadow(color: Colors.transparent)],
    border: Border.all(color: color),
    borderRadius: BorderRadius.all(Radius.circular(radius)),
  );
} // Text ........................................................ Ended>>>

// Text TextFrom Feild FilledColor...........................................>>>
class textformfield extends StatelessWidget {
  // var borderSide;
  // var isPassword;
  // var isSecure;
  // var fontSize;
  // var textColor;
  // // var fontFamily;
  // var text;
  // var maxLine;
  // var keyboardType;
  textformfield({
    Key? key,
    // var this.borderSide,
    // var this.fontFamily,
    // var this.fontSize = textSizeMedium,
    // var this.isPassword = false,
    // var this.isSecure = false,
    // var this.keyboardType,
    // var this.maxLine = 1,
    // var this.text,
    // var this.textColor = textColorSecondary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          size: 30,
          color: TravelPlane_blackColor,
        ),
        suffixIcon: CircleAvatar(
          backgroundColor: TravelPlane_AppBarColor,
          radius: 15,
          child: Icon(
            Icons.filter_list,
            color: TravelPlane_whiteColor,
          ),
        ).paddingRight(10),
        suffixIconConstraints: BoxConstraints(maxHeight: 50, maxWidth: 50),
        filled: true,
        fillColor: TravelPlane_whiteColor,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
        hintText: TextFeildText,
      ),
    );
  }
}

// Text TextFrom .....................................>>>
// ignore: must_be_immutable
class textform extends StatefulWidget {
  var borderSide;
  var isPassword;
  var isSecure;
  var fontSize;
  var textColor;
  var fontFamily;
  var text;
  var maxLine;
  var keyboardType;
  TextEditingController? mController;

  VoidCallback? onPressed;

  textform(var this.borderSide,
      {var this.fontSize = textSizeMedium,
      var this.textColor = textColorSecondary,
      var this.fontFamily = fontRegular,
      var this.isPassword = false,
      var this.isSecure = false,
      var this.text = "",
      var this.mController,
      var this.keyboardType,
      var this.maxLine = 1});

  @override
  State<StatefulWidget> createState() {
    return EditTextState();
  }
}

class textformState extends State<EditText> {
  @override
  Widget build(BuildContext context) {
    if (!widget.isSecure) {
      return TextFormField(
        controller: widget.mController,
        obscureText: widget.isPassword,
        cursorColor: textGreenColor,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          contentPadding: const EdgeInsets.fromLTRB(20, 8, 4, 8),
          hintText: widget.text,
          hintStyle: primaryTextStyle(),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5), borderSide: BorderSide()),
        ),
        maxLines: widget.maxLine,
        style: primaryTextStyle(),
      );
    } else {
      return TextField(
        controller: widget.mController,
        obscureText: widget.isPassword,
        cursorColor: colorPrimary,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                widget.isPassword = !widget.isPassword;
              });
            },
            child: Icon(
                widget.isPassword ? Icons.visibility_off : Icons.visibility),
          ),
          contentPadding: const EdgeInsets.fromLTRB(16, 8, 4, 8),
          hintText: widget.text,
          labelText: widget.text,
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: view_color, width: 0.0),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: view_color, width: 0.0),
          ),
        ),
        style: TextStyle(
            fontSize: widget.fontSize,
            color: textColorPrimary,
            fontFamily: widget.fontFamily),
      );
    }
  }
}

//.................TextForm Feild.............................///

class Boder_Dropdown extends StatefulWidget {
  const Boder_Dropdown({super.key});

  @override
  State<Boder_Dropdown> createState() => _Boder_DropdownState();
}

class _Boder_DropdownState extends State<Boder_Dropdown> {
  String? selectedIndex = 'Pakistan';
  List<String> listOfCountries = [
    'Afghanistan',
    'China',
    'Indonesia',
    'Turkiye',
    'UAE',
    'Pakistan',
    'Qatar',
    'USA'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: TravelPlane_AppBarColor),
          color: whiteColor,
          boxShadow: [
            BoxShadow(
                color: Color(0xff252525).withOpacity(0.10),
                blurRadius: 24,
                offset: Offset(0, 4))
          ]),
      child: DropdownButton(
        underline: 0.height,
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
    );
  }
}

// Boder Dropdown Card...............................................................>>>
class BoderDropdown extends StatefulWidget {
  const BoderDropdown({super.key});

  @override
  State<Boder_Dropdown> createState() => _Boder_DropdownState();
}

// ignore: unused_element
class _BoderDropdownState extends State<Boder_Dropdown> {
  String? selectedIndex = 'Afghanistan';
  List<String> listOfCountries = [
    'Afghanistan',
    'China',
    'Indonesia',
    'Turkiye',
    'UAE',
    'Pakistan',
    'Qatar',
    'USA'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color(0xff252525).withOpacity(0.10),
            blurRadius: 24,
            offset: Offset(0, 4))
      ]),
      child: Card(
        shape: RoundedRectangleBorder(
            side: BorderSide(color: TravelPlane_AppBarColor),
            borderRadius: BorderRadius.circular(5)),
        elevation: 0,
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
                child: Text(e).paddingLeft(spacing_standard_new),
              );
            }).toList(),
            onChanged: (dynamic value) {
              setState(() {
                selectedIndex = value;
              });
            },
          ),
        ),
      ),
    );
  }
}

// Simple Card...............................................................>>>
// ignore: must_be_immutable
class Simple_Card extends StatelessWidget {
  Color? textcolor;
  Color? filledcolor;
  String? PlaceName;
  IconData? trialingIcon;
  Simple_Card(
      {this.PlaceName,
      this.trialingIcon,
      this.textcolor,
      this.filledcolor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color(0xff252525).withOpacity(0.10),
            blurRadius: 24,
            offset: Offset(0, 4))
      ]),
      height: 55,
      width: double.infinity,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            text(PlaceName, fontSize: textSizeSMedium).paddingSymmetric(
                horizontal: spacing_standard_new, vertical: spacing_middle),
            IconButton(
                onPressed: () {},
                color: TravelPlane_AppBarColor,
                icon: Icon(trialingIcon)),
          ],
        ),
      ),
    );
  }
}

Widget formField(context, hint,
    {isEnabled = true,
    textcolor = textColorSecondary,
    Labeltext,
    filledcolor = whiteColor,
    isDummy = false,
    controller,
    isPasswordVisible = false,
    isPassword = false,
    keyboardType = TextInputType.text,
    FormFieldValidator<String>? validator,
    onSaved,
    textInputAction = TextInputAction.next,
    FocusNode? focusNode,
    FocusNode? nextFocus,
    Widget? suffixIcon,
    Widget? prefixIcon,
    maxLine = 1,
    suffixIconSelector}) {
  return Container(
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
          color: textColorPrimary.withOpacity(0.10),
          offset: Offset(0, 4),
          blurRadius: 24)
    ]),
    child: TextFormField(
      controller: controller,
      obscureText: isPassword ? isPasswordVisible : false,
      cursorColor: textColorPrimary,
      maxLines: maxLine,
      keyboardType: keyboardType,
      validator: validator,
      onSaved: onSaved,
      textInputAction: textInputAction,
      focusNode: focusNode,
      onFieldSubmitted: (arg) {
        if (nextFocus != null) {
          FocusScope.of(context).requestFocus(nextFocus);
        }
      },
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
          focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(spacing_standard),
              borderSide: BorderSide(color: Colors.transparent)),
          enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(spacing_standard),
              borderSide: BorderSide(color: Colors.transparent)),
          filled: true,
          fillColor: filledcolor,
          labelText: Labeltext,
          hintText: hint,
          hintStyle: TextStyle(fontSize: textSizeSMedium, color: textcolor),
          prefixIcon: prefixIcon != null ? prefixIcon : null,
          suffixIcon: isPassword
              ? GestureDetector(
                  onTap: suffixIconSelector,
                  child: suffixIcon,
                )
              : suffixIcon),
      style: TextStyle(
          fontSize: textSizeSMedium,
          color: isDummy ? Colors.transparent : textColorSecondary,
          fontFamily: fontRegular),
    ),
  );
}

class CustomTheme extends StatelessWidget {
  final Widget? child;

  CustomTheme({required this.child});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: appStore.isDarkModeOn
          ? ThemeData.dark().copyWith(
              accentColor: appColorPrimary,
              backgroundColor: context.scaffoldBackgroundColor,
            )
          : ThemeData.light(),
      child: child!,
    );
  }
}


// // ignore: must_be_immutable, camel_case_types
// class groceryButton extends StatefulWidget {
//   static String tag = '/dpButton';
//   var textContent;
//   VoidCallback onPressed;
//   var isStroked = false;
//   var height = 50.0;
//   var radius = 5.0;
//   var bgColors = colorPrimary;
//   Color? color = colorPrimary;

//   groceryButton(
//       {required this.textContent,
//       required this.onPressed,
//       this.isStroked = false,
//       this.height = 50.0,
//       this.radius = 5.0,
//       this.color,
//       this.bgColors = colorPrimary});

//   @override
//   groceryButtonState createState() => groceryButtonState();
// }

// // ignore: camel_case_types
// class groceryButtonState extends State<groceryButton> {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: widget.onPressed,
//       child: Container(
//         padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
//         alignment: Alignment.center,
//         decoration: widget.isStroked
//             ? boxDecoration(bgColor: Colors.transparent, color: colorPrimary)
//             : boxDecoration(bgColor: widget.bgColors, radius: widget.radius),
//         child: text(widget.textContent,
//             textColor: widget.isStroked ? colorPrimary : color_white,
//             fontSize: textSizeMedium,
//             isCentered: true,
//             fontFamily: fontSemiBold,
//             textAllCaps: true),
//       ),
//     );
//   }
// }

// // ignore: must_be_immutable, camel_case_types
// class groceryButton1 extends StatefulWidget {
//   static String tag = '/dpButton';
//   var textContent;
//   VoidCallback onPressed;
//   var isStroked = false;
//   var height = 50.0;

//   groceryButton1(
//       {required this.textContent,
//       required this.onPressed,
//       this.isStroked = false,
//       this.height = 50.0});

//   @override
//   groceryButton1State createState() => groceryButton1State();
// }

// // ignore: camel_case_types
// class groceryButton1State extends State<groceryButton1> {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: widget.onPressed,
//       child: Container(
//         padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
//         alignment: Alignment.center,
//         decoration: widget.isStroked
//             ? boxDecoration(bgColor: color_white, color: color_white)
//             : boxDecoration(bgColor: color_white, radius: 5.0),
//         child: text(widget.textContent,
//             textColor: widget.isStroked ? textGreenColor : textGreenColor,
//             fontSize: textSizeLargeMedium,
//             isCentered: true,
//             fontFamily: fontSemiBold,
//             textAllCaps: false),
//       ),
//     );
//   }
// }

// Widget title(
//     String title, Color headerColor, Color textColor, BuildContext context) {
//   return Stack(
//     alignment: Alignment.topCenter,
//     children: <Widget>[
//       Container(color: headerColor),
//       Center(
//         child: Row(
//           children: <Widget>[
//             IconButton(
//               icon: Icon(Icons.arrow_back, size: 30, color: textColor)
//                   .paddingOnly(top: spacing_standard_new),
//               onPressed: () {
//                 finish(context);
//               },
//             ),
//             text(title,
//                     textColor: textColor,
//                     fontSize: textSizeNormal,
//                     fontFamily: fontBold,
//                     isCentered: true)
//                 .paddingOnly(left: spacing_standard, top: 26)
//           ],
//         ).paddingOnly(left: spacing_standard, right: spacing_standard),
//       )
//     ],
//   );
// }

// Widget title1(
//     String title, Color color1, Color textColor, BuildContext context) {
//   return Stack(
//     alignment: Alignment.topCenter,
//     children: <Widget>[
//       Container(color: color1),
//       Center(
//         child: Row(
//           children: <Widget>[
//             IconButton(
//               icon: Icon(Icons.close, size: 30, color: textColor)
//                   .paddingOnly(top: spacing_standard_new),
//               onPressed: () {
//                 finish(context);
//               },
//             ),
//             text(title,
//                     textColor: textColor,
//                     fontSize: textSizeNormal,
//                     fontFamily: fontBold,
//                     isCentered: true)
//                 .paddingOnly(left: spacing_standard, top: 26)
//           ],
//         ).paddingOnly(
//           left: spacing_standard,
//           right: spacing_standard,
//         ),
//       )
//     ],
//   );
// }

// // Pin Entry TextField..............................................>>>
// class PinEntryTextField extends StatefulWidget {
//   final String? lastPin;
//   final int fields;
//   final onSubmit;
//   final fieldWidth;
//   final fontSize;
//   final isTextObscure;
//   final showFieldAsBox;

//   const PinEntryTextField(
//       {this.lastPin,
//       this.fields = 4,
//       this.onSubmit,
//       this.fieldWidth = 40.0,
//       this.fontSize = 16.0,
//       this.isTextObscure = false,
//       this.showFieldAsBox = false})
//       : assert(fields > 0);

//   @override
//   State createState() {
//     return PinEntryTextFieldState();
//   }
// }

// class PinEntryTextFieldState extends State<PinEntryTextField> {
//   late List<String?> _pin;
//   late List<FocusNode?> _focusNodes;
//   late List<TextEditingController?> _textControllers;

//   Widget textfields = Container();

//   @override
//   void initState() {
//     super.initState();
//     _pin = List<String?>.filled(widget.fields, null, growable: false);
//     _focusNodes = List<FocusNode?>.filled(widget.fields, null, growable: false);
//     _textControllers = List<TextEditingController?>.filled(widget.fields, null,
//         growable: false);
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       setState(() {
//         if (widget.lastPin != null) {
//           for (var i = 0; i < widget.lastPin!.length; i++) {
//             _pin[i] = widget.lastPin![i];
//           }
//         }
//         textfields = generateTextFields(context);
//       });
//     });
//   }

//   @override
//   void dispose() {
//     for (var t in _textControllers) {
//       t!.dispose();
//     }
//     super.dispose();
//   }

//   Widget generateTextFields(BuildContext context) {
//     List<Widget> textFields = List.generate(widget.fields, (int i) {
//       return buildTextField(i, context);
//     });

//     if (_pin.first != null) {
//       FocusScope.of(context).requestFocus(_focusNodes[0]);
//     }

//     return Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         verticalDirection: VerticalDirection.down,
//         children: textFields);
//   }

//   void clearTextFields() {
//     for (var tEditController in _textControllers) {
//       tEditController!.clear();
//     }
//     _pin.clear();
//   }

//   Widget buildTextField(int i, BuildContext context) {
//     if (_focusNodes[i] == null) {
//       _focusNodes[i] = FocusNode();
//     }
//     if (_textControllers[i] == null) {
//       _textControllers[i] = TextEditingController();
//       if (widget.lastPin != null) {
//         _textControllers[i]!.text = widget.lastPin![i];
//       }
//     }

//     _focusNodes[i]!.addListener(() {
//       if (_focusNodes[i]!.hasFocus) {}
//     });

//     return Container(
//       width: widget.fieldWidth,
//       margin: const EdgeInsets.only(right: 20.0),
//       child: TextField(
//         controller: _textControllers[i],
//         keyboardType: TextInputType.number,
//         textAlign: TextAlign.center,
//         maxLength: 1,
//         style: boldTextStyle(size: 18),
//         focusNode: _focusNodes[i],
//         obscureText: widget.isTextObscure,
//         decoration: InputDecoration(
//             counterText: "",
//             border: widget.showFieldAsBox
//                 ? const OutlineInputBorder(borderSide: BorderSide(width: 2.0))
//                 : null),
//         onChanged: (String str) {
//           setState(() {
//             _pin[i] = str;
//           });
//           if (i + 1 != widget.fields) {
//             _focusNodes[i]!.unfocus();
//             if (_pin[i] == '') {
//               FocusScope.of(context).requestFocus(_focusNodes[i - 1]);
//             } else {
//               FocusScope.of(context).requestFocus(_focusNodes[i + 1]);
//             }
//           } else {
//             _focusNodes[i]!.unfocus();
//             if (_pin[i] == '') {
//               FocusScope.of(context).requestFocus(_focusNodes[i - 1]);
//             }
//           }
//           if (_pin.every((String? digit) => digit != null && digit != '')) {
//             widget.onSubmit(_pin.join());
//           }
//         },
//         onSubmitted: (String str) {
//           if (_pin.every((String? digit) => digit != null && digit != '')) {
//             widget.onSubmit(_pin.join());
//           }
//         },
//       ).paddingOnly(left: spacing_control, right: spacing_control),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return textfields;
//   }
// }

// // ignore: must_be_immutable
// class TopBar extends StatefulWidget {
//   var leftIcon;
//   var titleName;
//   var rightIcon;
//   VoidCallback onPressed;

//   TopBar(var this.leftIcon, var this.titleName, var this.rightIcon,
//       this.onPressed);

//   @override
//   State<StatefulWidget> createState() {
//     return TopBarState();
//   }
// }

// class TopBarState extends State<TopBar> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         color: colorPrimary,
//         padding: const EdgeInsets.only(right: spacing_standard_new),
//         height: 60,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Row(
//               children: <Widget>[
//                 IconButton(
//                   icon: Icon(widget.leftIcon),
//                   color: color_white,
//                   onPressed: () {
//                     finish(context);
//                   },
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
//                   child: Center(
//                     child: text(widget.titleName,
//                         fontFamily: fontBold,
//                         textColor: color_white,
//                         fontSize: textSizeLargeMedium),
//                   ),
//                 )
//               ],
//             ),
//             GestureDetector(
//               onTap: widget.onPressed,
//               child: Icon(widget.rightIcon, color: color_white),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// void changeStatusColor(Color color) async {
//   setStatusBarColor(color);
// }

// class CustomTheme extends StatelessWidget {
//   final Widget? child;

//   const CustomTheme({required this.child});

//   @override
//   Widget build(BuildContext context) {
//     var appStore;
//     return Theme(
//       data: appStore.isDarkModeOn
//           ? ThemeData.dark().copyWith(
//               backgroundColor: context.scaffoldBackgroundColor,
//               colorScheme:
//                   ColorScheme.fromSwatch().copyWith(secondary: appColorPrimary),
//             )
//           : ThemeData.light(),
//       child: child!,
//     );
//   }
// }

// Widget? Function(BuildContext, String) placeholderWidgetFn() =>
//     (_, s) => placeholderWidget();

// Widget placeholderWidget() =>
//     Image.asset('images/placeholder.jpg', fit: BoxFit.cover);

// Widget commonCacheImageWidget(String? url, double height,
//     {double? width, BoxFit? fit}) {
//   if (url.validate().startsWith('http')) {
//     if (isMobile) {
//       return CachedNetworkImage(
//         placeholder:
//             placeholderWidgetFn() as Widget Function(BuildContext, String)?,
//         imageUrl: '$url',
//         height: height,
//         width: width,
//         fit: fit ?? BoxFit.cover,
//         errorWidget: (_, __, ___) {
//           return SizedBox(height: height, width: width);
//         },
//       );
//     } else {
//       return Image.network(url!,
//           height: height, width: width, fit: fit ?? BoxFit.cover);
//     }
//   } else {
//     return Image.asset(url!,
//         height: height, width: width, fit: fit ?? BoxFit.cover);
//   }
// }

// Widget commonCachedNetworkImage(
//   String? url, {
//   double? height,
//   double? width,
//   BoxFit? fit,
//   AlignmentGeometry? alignment,
//   bool usePlaceholderIfUrlEmpty = true,
//   double? radius,
//   Color? color,
// }) {
//   if (url!.validate().isEmpty) {
//     return placeHolderWidget(
//         height: height,
//         width: width,
//         fit: fit,
//         alignment: alignment,
//         radius: radius);
//   } else if (url.validate().startsWith('http')) {
//     return CachedNetworkImage(
//       imageUrl: url,
//       height: height,
//       width: width,
//       fit: fit,
//       color: color,
//       alignment: alignment as Alignment? ?? Alignment.center,
//       errorWidget: (_, s, d) {
//         return placeHolderWidget(
//             height: height,
//             width: width,
//             fit: fit,
//             alignment: alignment,
//             radius: radius);
//       },
//       placeholder: (_, s) {
//         if (!usePlaceholderIfUrlEmpty) return const SizedBox();
//         return placeHolderWidget(
//             height: height,
//             width: width,
//             fit: fit,
//             alignment: alignment,
//             radius: radius);
//       },
//     );
//   } else {
//     return Image.asset(url,
//             height: height,
//             width: width,
//             fit: fit,
//             alignment: alignment ?? Alignment.center)
//         .cornerRadiusWithClipRRect(radius ?? defaultRadius);
//   }
// }

// Widget placeHolderWidget(
//     {double? height,
//     double? width,
//     BoxFit? fit,
//     AlignmentGeometry? alignment,
//     double? radius}) {
//   return Image.asset('images/placeholder.jpg',
//           height: height,
//           width: width,
//           fit: fit ?? BoxFit.cover,
//           alignment: alignment ?? Alignment.center)
//       .cornerRadiusWithClipRRect(radius ?? defaultRadius);
// }
