
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_min_english/view/widgets/app_eleveted_buttonStyle.dart';

import '../utils/appcolor.dart';
import '../utils/text_style/app_text_style.dart';
import '../widgets/app_input_decoration.dart';
import '../widgets/app_stack.dart';

class ResetYourPassWord extends StatefulWidget {
  const ResetYourPassWord({Key? key}) : super(key: key);

  @override
  State<ResetYourPassWord> createState() => _ResetYourPassWordState();
}

class _ResetYourPassWordState extends State<ResetYourPassWord> {

  final _formKey = GlobalKey<FormState>();


  final _emailController = TextEditingController();



  @override
  void dispose() {
    _emailController.dispose();

  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.appBackgroundColor,
        body:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppStack(),
              Padding(
                padding:  EdgeInsets.only(left: 19.0.w,right: 38.w,top: 30.h,bottom: 30.h),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AuthPageHeaderText('Reset Your Password', 24.sp),
                      SizedBox(height: 32.h,),
                      AuthPageSubHeaderText('Email',20.sp),
                      SizedBox(height: 10.h,),
                      TextFormField(
                        controller: _emailController,
                        decoration: appInputDecoration(),
                        cursorColor: AppColor.appPrimaryColor,
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return 'Please enter a value';
                          }
                          return value;
                        },
                      ),
                      SizedBox(height: 68.h,),


                      Center(
                        child: SizedBox(
                          width: 251.w,
                          height: 50.h,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: AuthPageHeaderText('Send', 22.sp),
                            style: ButtonStyle(
                              side: MaterialStateProperty.all<BorderSide>(
                                BorderSide(
                                  color: AppColor.appPrimaryColor, // Set the border color
                                  width: 0.7.w, // Set the border width
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0XFFF9F9F9)), // Set the fill color
                            ),
                          ),
                        ),
                      ),







                    ],
                  ),
                ),
              ),



            ],
          ),
        ) ,
      ),
    );
  }
}
