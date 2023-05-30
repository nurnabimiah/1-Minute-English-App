

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_min_english/view/utils/appcolor.dart';
import 'package:one_min_english/view/utils/text_style/app_sub_header_text.dart';

import '../widgets/app_appbar.dart';
import '../widgets/app_container_decoration.dart';

class TackeChallengeScreen extends StatefulWidget {
  static const String routeName = '/challenge_screen';
  const TackeChallengeScreen({Key? key}) : super(key: key);

  @override
  State<TackeChallengeScreen> createState() => _TackeChallengeScreenState();
}

class _TackeChallengeScreenState extends State<TackeChallengeScreen> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(leadingIcon: Icons.arrow_back_ios_new, text: 'Challenge',),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            Container(
               height: 120.h,
               width: double.infinity,
               decoration: BoxDecoration(
                 color: Colors.white,

               ),
               child: Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: AppSubText(text: 'What is the synonym for aim ?', color: Color(0XFF4E4E4E),),
               ),
             ),
            SizedBox(height: 20.h,),
            Container(
              height: 48.h,
              width: double.infinity,
              decoration: appContainerDecoration(),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppSubText(text: 'A) Goal', color: Color(0XFF4E4E4E)),
              ) ,
            ),
            SizedBox(height: 10.h,),
            Container(
              height: 48.h,
              width: double.infinity,
              decoration: appContainerDecoration(),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppSubText(text: 'B) Love', color: Color(0XFF4E4E4E)),
              ) ,
            ),
            SizedBox(height: 10.h,),
            Container(
              height: 48.h,
              width: double.infinity,
              decoration: appContainerDecoration(),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppSubText(text: 'C) Promossion', color: Color(0XFF4E4E4E)),
              ) ,
            ),
            SizedBox(height: 10.h,),
            Container(
              height: 48.h,
              width: double.infinity,
              decoration: appContainerDecoration(),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppSubText(text: 'D) Hate', color: Color(0XFF4E4E4E)),
              ) ,
            ),

            SizedBox(height: 40.h,),

            SizedBox(
              height: 42.h,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor:AppColor.appPrimaryColor
                      // Set the background color to red
                ),
                child: AppSubText(text: 'Next', color: Colors.white),
              ),
            )
          ],
        ),
      ),

    );
  }
}
