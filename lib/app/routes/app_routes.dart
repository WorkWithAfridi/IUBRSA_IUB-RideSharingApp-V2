import 'package:get/get.dart';
import 'package:iubrsa/app/controllers/bindings/onboarding_screen_binding.dart';
import 'package:iubrsa/app/controllers/bindings/signin_screen_binding.dart';
import 'package:iubrsa/app/controllers/bindings/splash_screen_binding.dart';
import 'package:iubrsa/app/views/onboarding_screen.dart';
import 'package:iubrsa/app/views/signin_screen.dart';

import '../views/splash_screen.dart';

class ROUTES {
  static get getSplashScreenRoute => "/splash_screen";
  static get getOnboardingScreenRoute => "/onboarding_screen";
  static get getSigninScreenRoute => "/signin_screen";
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
    ),
    GetPage(
      name: getSigninScreenRoute,
      page: () => SigninScreen(),
      binding: SigninScreenBinding(),
    ),
  ];
}
