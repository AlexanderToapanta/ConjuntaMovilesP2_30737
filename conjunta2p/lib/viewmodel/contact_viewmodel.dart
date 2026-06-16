import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactViewModel extends ChangeNotifier {

  Future<void> makePhoneCall() async {
    final Uri phoneUri = Uri(
      scheme: 'tel',
      path: '0988464021',
    );

    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    }
  }

  Future<void> sendEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'solanojosue2004@gmail.com',
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    }
  }
}