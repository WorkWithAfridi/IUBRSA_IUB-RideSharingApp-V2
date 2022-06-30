import 'package:url_launcher/url_launcher.dart';

class UrlLauncherServices {
  static Future<void> makePhoneCall(String number) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: number,
    );
    await launchUrl(launchUri);
  }

  static Future<void> openInBrowser(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw "Could not launch url";
    }
    return;
  }
}
