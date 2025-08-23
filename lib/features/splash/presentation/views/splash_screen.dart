import 'package:dalel_app/core/Routes/routes_name.dart';
import 'package:dalel_app/core/database/cache/cache_helper.dart';
import 'package:dalel_app/core/database/cache/cached_keys.dart';
import 'package:dalel_app/core/functions/navigtion_fun.dart';
import 'package:dalel_app/core/services/service_locator.dart';
import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    bool? isVisited =
        getIt<CacheHelper>().getData(CachedKeys.isVisited, bool) ?? false;
    print(isVisited);
    if (isVisited == true) {
      FirebaseAuth.instance.currentUser == null
          ? delayedNavigation(context, RoutesName.signIn)
          : delayedNavigation(context, RoutesName.home);
    } else {
      delayedNavigation(context, RoutesName.onboarding);
    }

    super.initState();
  }

  void delayedNavigation(context, String path) {
    Future.delayed(Duration(seconds: 2), () {
      pushReplacementNavigtion(context, path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppString.dalel,
          style: AppTextStyle.pacifico(50.sp, AppColor.deepBrown),
        ),
      ),
    );
  }
}
