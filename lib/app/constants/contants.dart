import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:luxe_desires/app/constants/app_color.dart';

TextStyle displayStyle = GoogleFonts.inter(
  fontSize: 57.sp,
  fontWeight: FontWeight.normal,
  color: DarkThemeColor.primaryText,
);

TextStyle labelStyle = GoogleFonts.inter(
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
  color: DarkThemeColor.secondaryText,
);

TextStyle headlineStyle = GoogleFonts.inter(
  fontSize: 24.sp,
  fontWeight: FontWeight.w500,
  color: DarkThemeColor.primaryText,
);

TextStyle bodystyle = GoogleFonts.readexPro(
  fontSize: 16.sp,
  fontWeight: FontWeight.w400,
  color: DarkThemeColor.primaryText,
);

TextStyle titleStyle = GoogleFonts.readexPro(
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
  color: DarkThemeColor.info,
);

//------loader---

Widget loader = Center(
    child: SizedBox(
        height: 150.h,
        width: 150.w,
        child: Lottie.asset('assets/gif/123.json')));
