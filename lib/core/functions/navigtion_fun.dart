import 'package:dalel_app/core/Routes/app_navigation.dart';
import 'package:dalel_app/core/Routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

pushNavigtion(BuildContext context, String route) {
  GoRouter.of(context).push(route);
}

pushReplacementNavigtion(BuildContext context, String route) {
  GoRouter.of(context).pushReplacement(route);
}
