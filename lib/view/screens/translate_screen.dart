
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_min_english/view/screens/profile_screen.dart';
import 'package:one_min_english/view/utils/appcolor.dart';
import 'package:one_min_english/view/widgets/app_button.dart';
import 'package:one_min_english/view/widgets/app_input_decoration.dart';
import 'package:one_min_english/view/widgets/my_drawer.dart';

import '../utils/text_style/app_text_style.dart';

class TranslateScreen extends StatefulWidget {

  static const String routeName = '/translate_screen';
  const TranslateScreen({Key? key}) : super(key: key);

  @override
  State<TranslateScreen> createState() => _TranslateScreenState();
}

class _TranslateScreenState extends State<TranslateScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        drawer: MyDrawer(),
        backgroundColor: AppColor.appBackgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor:AppColor.appBackgroundColor ,
          title: Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 10.w),
                child: Image.asset('images/App_logo.png',height: 56.h,width: 68.w,),
              ),
              AppTextStyle(
                  text: 'Language translate',
                  color: AppColor.appPrimaryColor,
                  fontWeight: FontWeight.w400,
                  size: 18.sp)
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: 14.0.w,right: 14.w,top: 20.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppButton(onTap: (){},text: 'Englis',),
                    Image.asset('images/translatator.png'),
                    AppButton(onTap: (){},text: 'Bangla',),

                  ],
                ),
                SizedBox(height: 34.h,),
                TextFormField(
                  style: TextStyle(color: Colors.black),
                  maxLines: 10,
                  decoration: appInputDecoration(),
                ),
                SizedBox(height: 27.h,),
                Container(
                  width: 337.w ,
                  color: Colors.red,
                ),

                TextButton(onPressed: (){
                  Navigator.pushNamed(context,MyProfileScreen.routeName);
                }, child: Text('Next'))


              ],
            ),
          ),
        ),






      ),
    );
  }
}
