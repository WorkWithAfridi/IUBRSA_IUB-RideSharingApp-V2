import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iubrsa/app/shared/bindings/app_bindings.dart';
import 'package:iubrsa/app/routes/app_routes.dart';
import 'package:iubrsa/data/services/theme_services.dart';
import 'package:iubrsa/data/theme/custom_theme.dart';

void main() async {
  await GetStorage.init();
  runApp(const IUBRSA());
}

class IUBRSA extends StatelessWidget {
  const IUBRSA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      smartManagement: SmartManagement.onlyBuilder,
      theme: IUBRSATheme.lightTheme,
      darkTheme: IUBRSATheme.darkTheme,
      themeMode: ThemeService().getThemeMode(),
      getPages: ROUTES.routes,
      initialRoute: ROUTES.getSplashScreenRoute,
      initialBinding: AppBindings(),
    );
  }
}
