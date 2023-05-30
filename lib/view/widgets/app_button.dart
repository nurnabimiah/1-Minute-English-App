

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/appcolor.dart';



class AppButton extends StatelessWidget {
  const AppButton({Key? key, required this.onTap, this.text,}) : super(key: key);

  final VoidCallback onTap;
  final String? text;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 143.w,
      child: ElevatedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(
              color: Colors.grey, // Set the border color
              width: 0.7, // Set the border width
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Color(0XFFF9F9F9)), // Set the fill color
        ),
        onPressed: onTap,
        child: Text(
          text!,
          style: TextStyle(
            color: AppColor.appPrimaryColor,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
