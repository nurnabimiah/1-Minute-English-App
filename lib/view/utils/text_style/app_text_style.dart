

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthPageHeaderText extends StatelessWidget {
  AuthPageHeaderText(this.text, this.size);

  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        fontSize: size,
        fontWeight: FontWeight.w600,
        color: Color(0XFF608B62),
      ),
    );
  }
}


// auth page another TextStyle

class AuthPageSubHeaderText extends StatelessWidget {
  AuthPageSubHeaderText( this.text, this.size);

  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        fontSize: size,
        fontWeight: FontWeight.w500,
        color: Color(0XFF818381),
      ),
    );
  }
}


//.....appTextStyle
class AppTextStyle extends StatelessWidget {
  const AppTextStyle({Key? key, required this.text, required this.color, required this.fontWeight, required this.size}) : super(key: key);

  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double size;

  @override
  Widget build(BuildContext context) {
   return Text(
     text,
     style: GoogleFonts.inter(
       fontSize: size,
       fontWeight: fontWeight,
       color: color,
     ),

   );
  }
}






