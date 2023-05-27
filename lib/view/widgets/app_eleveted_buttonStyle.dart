

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/appcolor.dart';

ButtonStyle appElevatedButtonStyle() {
  return ButtonStyle(
    side: MaterialStateProperty.all<BorderSide>(
      BorderSide(
        color: AppColor.appPrimaryColor, // Set the border color
        width: 0.7.w, // Set the border width
      ),
    ),
    backgroundColor: MaterialStateProperty.all<Color>(Color(0XFFF9F9F9)), // Set the fill color
  );
}