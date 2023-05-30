

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_min_english/view/utils/text_style/app_sub_header_text.dart';

class AppTextBtn extends StatelessWidget {
  const AppTextBtn({Key? key, required this.onTap, required this.text}) : super(key: key);


  final VoidCallback onTap;
  final String text;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 14.0.w),
      child: TextButton(
          onPressed: onTap,
          child: AppSubText(text: text, color: Color(0XFF4C4C4C),)),
    );
  }
}
