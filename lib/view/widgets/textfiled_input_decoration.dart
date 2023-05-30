



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/appcolor.dart';

InputDecoration textFiledinputDecoration( ) {
  return InputDecoration(



      fillColor: Colors.white,
      contentPadding: EdgeInsets.symmetric(vertical: 14.h),
      filled: true,
      prefixIcon: Icon(Icons.search,color: Color(0XFFBBC8B8),),
      hintText: 'Find a word',
      hintStyle:TextStyle(color: Color(0XFFBBC8B8),fontSize:18.sp,fontWeight: FontWeight.w400 ) ,
      border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.appInputDecorationColor,
            width: 1.0,

          ),

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