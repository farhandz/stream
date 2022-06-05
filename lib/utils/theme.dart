import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 30.0;

Color primaryColor = Color(0xff1252A3);
Color secondaryColor = Color(0xff38ABBE);
Color alertColor = Color(0xffED6363);
Color priceColor = Color(0xff2C96F1);
Color backgroundColor1 = Color(0xff121923);
Color backgroundColor2 = Color(0xff2B2937);
Color backgroundColor3 = Color(0xff242231);
Color backgroundColor4 = Color(0xff252836);
Color backgroundColor5 = Color(0xff2B2844);
Color backgroundColor6 = Color(0xffECEDEF);
Color primaryTextColor = Color(0xffF1F0F2);
Color secondaryTextColor = Color(0xff999999);
Color subtitleColor = Color(0xff504F5E);
Color transparentColor = Colors.transparent;
Color blackColor = Color(0xff2E2E2E);

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: primaryTextColor,
);

TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: secondaryTextColor,
);

TextStyle subtitleTextStyle = GoogleFonts.poppins(
  color: subtitleColor,
);

TextStyle priceTextStyle = GoogleFonts.poppins(
  color: priceColor,
);

TextStyle purpleTextStyle = GoogleFonts.poppins(
  color: primaryColor,
);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: blackColor,
);

TextStyle alertTextStyle = GoogleFonts.poppins(
  color: alertColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;


/// Get Device with
double deviceWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

/// Get Device Height
double deviceHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}


double cardAnimeSize(BuildContext context) {
  final double itemHeight = (deviceHeight(context) - kToolbarHeight - 210) / 2;
  final double itemWidth = deviceWidth(context) / 2;
  return  itemWidth/itemHeight;
}
