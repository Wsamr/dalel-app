import 'package:dalel_app/core/Routes/app_navigation.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        routerConfig: AppNavigation.router,
      ),
    );
  }
}
