import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/text_style/logo_textStyle.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/App_logo.png'),
            Text('1 Minute English',
                style: TextStyle(
                    fontSize: 24.sp,
                    color: Color(0xFF2C552E),
                    fontWeight: FontWeight.w600))
          ],
        ),
      ),
    );
  }
}
