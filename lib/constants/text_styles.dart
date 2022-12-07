import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

///
/// This is a class where all text styles are stored
/// You can then reference them in code with `MyTextStyles.someTextStyle`
///

class MyTextStyles {
  static final header = GoogleFonts.roboto(
    color: MyColors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    height: 1.6,
  );

  static final body = GoogleFonts.roboto(
    color: MyColors.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );

  static final bodySmall = GoogleFonts.roboto(
    color: MyColors.black,
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
  );

  static final bodySmallWhite = GoogleFonts.roboto(
    color: MyColors.white,
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
  );

  static final link = GoogleFonts.roboto(
    color: MyColors.blue,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );

  static final linkSmall = GoogleFonts.roboto(
    color: MyColors.blue,
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
  );
  static final linkSmallWhite = GoogleFonts.roboto(
    color: Colors.lightBlue,
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
  );

  static final error = GoogleFonts.roboto(
    color: MyColors.red,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    height: 1.6,
  );
}
