

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_min_english/view/screens/take_challange_screen.dart';
import 'package:one_min_english/view/utils/appcolor.dart';
import 'package:one_min_english/view/utils/text_style/app_sub_header_text.dart';

import '../widgets/app_appbar.dart';

class MyProfileScreen extends StatelessWidget {

  static const String routeName = '/profile_screen';

  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBackgroundColor,
      appBar: AppAppbar(
        leadingIcon: Icons.arrow_back_ios,
        text: 'My Profile',

      ),

      body:Padding(
        padding: const EdgeInsets.all(29.0),
        child: Stack(
          children: [

            Container(
              height: 300.h,
              decoration: BoxDecoration(
                border: Border.all(width: 0.3),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10.r),topLeft: Radius.circular(10.r))
              ),

            ),
            Container(
              height: 150.h,
              decoration: BoxDecoration(
                  color: AppColor.appPrimaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10.r)),
              ),
              child: Row(

                children: [
                  Expanded(
                      flex:3,
                      child: Image.asset('images/App_logo.png',height: 100.h,),),


                  //.................>> profile  details.........
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       AppSubText(text: 'Eyecon Soft', color: Colors.white),
                        SizedBox(height: 8.h,),
                        AppSubText(text: 'eyeconsoft@gmail.com', color: Colors.white),
                        SizedBox(height: 8.h,),
                        AppSubText(text: 'Account type : Free', color: Colors.white),
                      ],
                    ),
                  )
                ],
              ),
              
            ),
            Positioned(
              bottom: 80.h,
              left: 20.w,
              right: 20.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      AppSubText(text: 'Eyecon Soft', color: Color(0XFF686968)),
                      SizedBox(height: 12.h,),
                      AppSubText(text: 'Eyecon Soft', color: Color(0XFF686968)),
                    ],
                  ),
                  Column(
                    children: [
                      AppSubText(text: ':', color: Color(0XFF686968)),
                      SizedBox(height: 12.h,),
                      AppSubText(text: ':', color: Color(0XFF686968)),
                    ],
                  ),
                  Column(
                    children: [
                      AppSubText(text: '01', color: Color(0XFF686968)),
                      SizedBox(height: 12.h,),
                      AppSubText(text: '10/10/2023', color: Color(0XFF686968)),
                    ],
                  ),

                ],
              ),
            ),


             Positioned(
               right: 0,
               bottom: 5.h,
               child: TextButton(onPressed: (){
                 Navigator.pushNamed(context,TackeChallengeScreen.routeName );
               }, child: Text('Next')),
             )

          ],
        ),
      )




    );
  }
}



