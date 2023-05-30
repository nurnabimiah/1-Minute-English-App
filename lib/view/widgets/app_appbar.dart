

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/text_style/app_sub_header_text.dart';

class AppAppbar extends StatelessWidget implements PreferredSizeWidget {
  final IconData leadingIcon;
  final String text;


  const AppAppbar({
    Key? key,
    required this.leadingIcon, required this.text,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.3,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          // Handle leading button onPressed event
        },
        icon: Icon(
          leadingIcon,
          color: Color(0XFF626262),
          size: 18.sp,
        ),
      ),
      title: AppSubText(text: text, color: Color(0XFF4C4C4C),),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}