import 'package:dalel_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToastMsg(String msg, {Color? color}) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: color ?? AppColor.primaryColor,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
