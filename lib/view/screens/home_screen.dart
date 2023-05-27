
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:one_min_english/view/utils/appcolor.dart';
import 'package:one_min_english/view/utils/text_style/app_text_style.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  late DateTime time;
  late String formattedTime;

  @override
  void initState() {
    super.initState();
    time = DateTime.now();
    formattedTime = DateFormat('HH : mm : ss').format(time);

    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        time = DateTime.now();
        formattedTime = DateFormat('HH:mm:ss').format(time);
      });
    });
  }


/*  late DateTime endTime;
  late String remainingTime;

  @override
  void initState() {
    super.initState();
    endTime = DateTime.parse('2023-06-01 00:00:00');
    remainingTime = calculateRemainingTime();

    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        remainingTime = calculateRemainingTime();
      });
    });
  }

  String calculateRemainingTime() {
    Duration remainingDuration = endTime.difference(DateTime.now());
    if (remainingDuration.isNegative) {
      return 'Time has elapsed';
    } else {
      int hours = remainingDuration.inHours;
      int minutes = remainingDuration.inMinutes.remainder(60);
      int seconds = remainingDuration.inSeconds.remainder(60);

      return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
    }
  }*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title:AppTextStyle(
          text: 'Daily Activity', color: Color(0XFF656565),
          fontWeight: FontWeight.w600, size:18.sp ,)
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left:20.w,right: 20.w,top: 27.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width:double.infinity,
                height: 94.h,
                decoration: BoxDecoration(
                    color: AppColor.appPrimaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(10.r))
                ),
                child: Padding(
                  padding:  EdgeInsets.only(left: 33.0.w,top: 16.h ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTextStyle(
                          text: 'Next 5 Words Coming.....',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          size: 16.sp),
                      SizedBox(height:8.h ,),
                      AppTextStyle(text: formattedTime,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          size: 24.sp)

                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.h,),
              AppTextStyle(text: 'Today words', color:AppColor.appPrimaryColor, fontWeight: FontWeight.w600, size: 20.sp)












            ],
          ),
        ),
      ),
    );
  }
}
