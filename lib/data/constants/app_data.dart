import 'package:flutter/cupertino.dart';

class AppData {
  static const regularTextStyle = TextStyle(
    fontFamily: 'Poppins-Regular',
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: darkBlueColor,
  );
  static const boldTextStyle = TextStyle(
    fontFamily: 'Poppins-SemiBold',
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: darkBlueColor,
  );
  static const lightTextStyle = TextStyle(
    fontFamily: 'Poppins-Light',
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: darkBlueColor,
  );
  static const customWhite = Color(0xffFFFFFF);
  static const customLightGrey = Color(0xffC1C4CB);
  static const customDarkGrey = Color(0xff6A7183);
  static const customRed = Color(0xffD20714);
  static const royalBlueColor = Color(0xff1B44B0);
  static const babyBlueColor = Color(0xffE8F7FF);
  static const creamColor = Color(0xffEFEEE9);
  static const darkBlueColor = Color(0xff071330);

  static const waitTime = Duration(seconds: 3);
  static const defaultElevation = 2;
  static const defaultPadding = EdgeInsets.symmetric(horizontal: 15);
  static const defaultBorderRadius = 10.00;
  static const defaultButtonHeight = 55.00;
}
