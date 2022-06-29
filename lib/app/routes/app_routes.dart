import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/controllers/bindings/homeframe_bindings.dart';
import 'package:iubrsa/app/controllers/bindings/onboarding_screen_binding.dart';
import 'package:iubrsa/app/controllers/bindings/profile_screen_binding.dart';
import 'package:iubrsa/app/controllers/bindings/signin_screen_binding.dart';
import 'package:iubrsa/app/controllers/bindings/splash_screen_binding.dart';
import 'package:iubrsa/app/views/homefram.dart';
import 'package:iubrsa/app/views/onboarding_screen.dart';
import 'package:iubrsa/app/views/profile_screen.dart';
import 'package:iubrsa/app/views/signin_screen.dart';

import '../controllers/bindings/signup_screen_binding.dart';
import '../views/signup_screen.dart';
import '../views/splash_screen.dart';

class ROUTES {
  static get getSplashScreenRoute => "/splash_screen";
  static get getOnboardingScreenRoute => "/onboarding_screen";
  static get getSigninScreenRoute => "/signin_screen";
  static get getSignupScreenRoute => "/signup_screen";
  static get getHomeframeRoute => "/homeframe";
  static get getProfileScreenRoute => "/profile_screen";

  static List<GetPage> routes = [
    GetPage(
      name: getSplashScreenRoute,
      page: () => SplashScreen(),
      binding: SplashScreenBindings(),
    ),
    GetPage(
      name: getOnboardingScreenRoute,
      page: () => OnboardingScreen(),
      binding: OnboardingScreenBindings(),
      transition: Transition.downToUp,
      curve: Curves.easeInOut,
    ),
    GetPage(
      name: getSigninScreenRoute,
      page: () => SigninScreen(),
      binding: SigninScreenBinding(),
      transition: Transition.rightToLeft,
      curve: Curves.easeInOut,
    ),
    GetPage(
      name: getSignupScreenRoute,
      page: () => SignupScreen(),
      binding: SignupScreenBinding(),
      transition: Transition.rightToLeft,
      curve: Curves.easeInOut,
    ),
    GetPage(
      name: getHomeframeRoute,
      page: () => Homeframe(),
      binding: HomeframeBindings(),
      transition: Transition.rightToLeft,
      curve: Curves.easeInOut,
    ),
    GetPage(
      name: getProfileScreenRoute,
      page: () => ProfileScreen(),
      binding: ProfileScreenBinding(),
      transition: Transition.rightToLeft,
      curve: Curves.easeInOut,
    )
  ];
}
