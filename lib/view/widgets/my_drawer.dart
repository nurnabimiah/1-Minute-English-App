import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_min_english/view/utils/appcolor.dart';
import 'package:one_min_english/view/utils/text_style/app_sub_header_text.dart';

import 'app_text_button.dart';
import 'divider_widget.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: ListView(
        children: [
          // old....code
          DrawerHeader(
              decoration: BoxDecoration(
                color: AppColor.appPrimaryColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child: Image.asset(
                    'images/App_logo.png',
                    height: 139.h,
                    width: 142.w,
                  )),
                  AppSubText(text: 'Eycon Soft', color: Colors.white),
                  AppSubText(text: 'eyeconsoft@gmail.com', color: Colors.white),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextBtn(onTap: () {}, text: 'My Profile'),
              DividerWidget(),
              AppTextBtn(onTap: () {}, text: 'Daily Cheack-in'),
              DividerWidget(),
              AppTextBtn(onTap: () {}, text: 'Daily Challange'),
              DividerWidget(),
              AppTextBtn(onTap: () {}, text: 'Word Game'),
              DividerWidget(),
              AppTextBtn(onTap: () {}, text: 'Dark/Light'),
              DividerWidget(),
              AppTextBtn(onTap: () {}, text: 'Logout'),
              DividerWidget(),
            ],
          )
        ],
      ),
    );
  }
}


