import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_min_english/view/screens/dictionary_screen.dart';
import 'package:one_min_english/view/screens/home_screen.dart';
import 'package:one_min_english/view/screens/login_screen.dart';
import 'package:one_min_english/view/screens/profile_screen.dart';
import 'package:one_min_english/view/screens/reset_your_password.dart';
import 'package:one_min_english/view/screens/sign_up_screen.dart';
import 'package:one_min_english/view/screens/splash_screen.dart';
import 'package:one_min_english/view/screens/take_challange_screen.dart';
import 'package:one_min_english/view/screens/translate_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: '1 Minute English',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: SplashScreen(),
          routes: {
            SplashScreen.routeName: (context) => SplashScreen(),
            LoginScreen.routeName: (context) => LoginScreen(),
            SignUpScreen.routeName: (context) => SignUpScreen(),
            ResetYourPassWord.routeName: (context) => ResetYourPassWord(),
            Homescreen.routeName: (context) => Homescreen(),
            DictionaryScreen.routeName: (context) => DictionaryScreen(),
            TranslateScreen.routeName: (context) => TranslateScreen(),
            MyProfileScreen.routeName: (context) => MyProfileScreen(),
            TackeChallengeScreen.routeName: (context) => TackeChallengeScreen(),
          },
        );
      },

    );
  }
}






