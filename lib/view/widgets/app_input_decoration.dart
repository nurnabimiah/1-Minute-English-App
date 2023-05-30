


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/appcolor.dart';

InputDecoration appInputDecoration() {
  return InputDecoration(
     


      filled: true,
      contentPadding: EdgeInsets.all(12),
      fillColor: Colors.white,
      border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.appInputDecorationColor,
            width: 1.0,

          ),
          borderRadius: BorderRadius.all(Radius.circular(10.r))
      ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.appInputDecorationColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.r))

      )
  );
}