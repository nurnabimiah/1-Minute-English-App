import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_min_english/view/screens/translate_screen.dart';
import 'package:one_min_english/view/utils/appcolor.dart';
import 'package:one_min_english/view/utils/text_style/app_text_style.dart';

import '../widgets/app_container_decoration.dart';
import '../widgets/textfiled_input_decoration.dart';

class DictionaryScreen extends StatefulWidget {
  static const String routeName = '/dictionary_screen';
  const DictionaryScreen({Key? key}) : super(key: key);

  @override
  State<DictionaryScreen> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.appBackgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.appBackgroundColor,
          title: AppTextStyle(
              text: '5000 used English words',
              color: AppColor.appPrimaryColor,
              fontWeight: FontWeight.w400,
              size: 18.sp),
          leading: Padding(
            padding: EdgeInsets.only(left: 18.0.w),
            child: Image.asset('images/App_logo.png'),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 23.w, right: 23.w, top: 30.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  cursorColor: AppColor.appPrimaryColor,
                  decoration: textFiledinputDecoration(),
                ),

                SizedBox(height: 10.h,),

                ListView.separated(
                  shrinkWrap: true,
                  itemCount: 3,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                        height: 10); // Adjust the height as per your requirement
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 48.h,
                      width: double.infinity,

                      decoration: appContainerDecoration(),
                    );
                  },

                  // Number of items in the list
                ),


                TextButton(onPressed: (){
                  Navigator.pushNamed(context,TranslateScreen.routeName);
                }, child: Text('Next'))


              ],
            ),
          ),
        ),
      ),
    );
  }


}
