import 'package:flutter/widgets.dart';

double responsiveWidth(
  BuildContext context,
  double width, {
  double base = 375,
}) {
  double widthScreen = MediaQuery.of(context).size.width;
  return widthScreen * (width / base);
}

double responsiveHeight(
  BuildContext context,
  double height, {
  double base = 812,
}) {
  double heightScreen = MediaQuery.of(context).size.height;
  return heightScreen * (height / base);
}
