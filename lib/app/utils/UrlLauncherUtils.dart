import 'package:url_launcher/url_launcher.dart';

class UrlLauncherUtils {
  static launchFullUrl({required String url}) async {
    var uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    }
  }

  static launchEmail({required email}) async {
    final Uri uri = Uri(scheme: 'mailto', path: email);
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    }
  }

  static launchPhone({required phone}) async {
    final Uri uri = Uri(scheme: 'tel', path: phone);
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    }
  }
}
