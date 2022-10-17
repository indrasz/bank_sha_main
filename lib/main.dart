import 'src/pages/pages.dart';
import 'package:flutter/material.dart';
import 'src/res/res.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: lightBackgroundColor,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: blackColor,
          ),
          titleTextStyle: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnBoardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-set-profile': (context) => const SignUpSetProfilePage(),
        '/sign-up-set-idcard': (context) => const SignUpSetIdCardPage(),
        '/sign-up-success': (context) => const SignUpSuccessPage(),
        '/home': (context) => const MainPage(),
        '/profile' : (context) => const ProfilePage(),
        '/profile-edit': (context) => const ProfileEditPage(),
        '/profile-edit-success': (context) => const ProfileEditSuccessPage(),
        '/top-up': (context) => const TopUpPage(),
        '/pin' : (context) => const PinPage(),
      },
    );
  }
}