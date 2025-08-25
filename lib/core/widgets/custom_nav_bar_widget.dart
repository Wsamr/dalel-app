import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/features/cart/presentation/view/cart_view.dart';
import 'package:dalel_app/features/home/home_cubit/home_cubit.dart';
import 'package:dalel_app/features/home/presentation/view/home_view.dart';
import 'package:dalel_app/features/profile/presentation/view/profile_view.dart';
import 'package:dalel_app/features/search/presentation/view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class CustomNavBarWidget extends StatelessWidget {
  CustomNavBarWidget({super.key});
  PersistentTabController _controller = PersistentTabController();

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style12,
      backgroundColor: AppColor.primaryColor,
      decoration: NavBarDecoration(
        colorBehindNavBar: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    BlocProvider(create: (context) => HomeCubit(), child: HomeView()),

    CartView(),
    SearchView(),
    ProfileView(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.assetsImagesHomeIconActive),
      inactiveIcon: SvgPicture.asset(Assets.assetsImagesHomeIconInactive),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.assetsImagesCartIconActive),
      inactiveIcon: SvgPicture.asset(Assets.assetsImagesCartIconInactive),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.assetsImagesSearchIconActive),
      inactiveIcon: SvgPicture.asset(Assets.assetsImagesSearchIconInactive),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.assetsImagesProfileIconActive),
      inactiveIcon: SvgPicture.asset(Assets.assetsImagesProfileIconInactive),
    ),
  ];
}
