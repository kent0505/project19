import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

double navBarHeight = 62;

int getCurrentTimestamp() {
  return DateTime.now().millisecondsSinceEpoch ~/ 1000;
}

String formatTimestamp(int timestamp) {
  DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  String formattedDate = DateFormat('dd.MM.yyyy').format(date);
  return formattedDate;
}

String formatDateTime(DateTime date) {
  String formattedDate = DateFormat('dd.MM.yyyy').format(date);
  return formattedDate;
}

DateTime convertToDateTime(String date) {
  return DateFormat('dd.MM.yyyy').parse(date);
}

bool getButtonActive(List<TextEditingController> controllers) {
  for (TextEditingController controller in controllers) {
    if (controller.text.isEmpty) return false;
  }
  return true;
}

double getStatusBar(BuildContext context) {
  return MediaQuery.of(context).viewPadding.top;
}

double getBottom(BuildContext context) {
  return MediaQuery.of(context).viewPadding.bottom;
}

void precacheImages(BuildContext context) {
  List<String> imageAssets = [
    'assets/onboarding1.png',
    'assets/onboarding2.png',
  ];
  for (String assets in imageAssets) {
    precacheImage(AssetImage(assets), context);
  }
}
