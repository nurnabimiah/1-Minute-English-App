
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppSubText extends StatelessWidget {
  const AppSubText({Key? key, required this.text, required this.color}) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        textStyle: TextStyle(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          color: color,
          fontSize: 16.sp

        )
      ),


    );
  }
}
