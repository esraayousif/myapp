import 'package:url_launcher/url_launcher.dart';

class Utilities {
  static void callPhone(String phone) async {
    await launch("tel:$phone");
  }

  static sendMail(String mail) async {
    await launch("mailto:$mail");
  }

  static launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
