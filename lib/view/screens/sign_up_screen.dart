
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_min_english/view/screens/reset_your_password.dart';

import '../utils/appcolor.dart';
import '../utils/text_style/app_text_style.dart';
import '../widgets/app_eleveted_buttonStyle.dart';
import '../widgets/app_input_decoration.dart';
import '../widgets/app_stack.dart';

class SignUpScreen extends StatefulWidget {

  static const String routeName = '/signUp_screen';


  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController  = TextEditingController();
  final _nameController = TextEditingController();


  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

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
                      AuthPageHeaderText('Create Your Account', 24.sp),
                      SizedBox(height: 32.h,),
                      AuthPageSubHeaderText('Name',20.sp),
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
                      SizedBox(height: 10.h,),
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
                      SizedBox(height: 10.h,),
                      AuthPageSubHeaderText('Password',20.sp),
                      SizedBox(height: 10.h,),
                      TextFormField(
                        controller: _passwordController,
                        decoration: appInputDecoration(),
                        cursorColor: AppColor.appPrimaryColor,
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return 'Please enter a value';
                          }
                          return value;
                        },
                      ),
                      SizedBox(height: 40.h,),

                      //....Sign up button......
                      Center(
                        child: SizedBox(
                          width: 251.w,
                          height: 50.h,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context,ResetYourPassWord.routeName);
                            },
                            child: AuthPageHeaderText('Sign up', 22.sp),
                            style: appElevatedButtonStyle(),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AuthPageSubHeaderText("Don't have an account ?", 14.sp),
                          TextButton(onPressed: (){}, child:AuthPageHeaderText('Sign in',14.sp))
                        ],
                      )








                      // Don't have an account








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

