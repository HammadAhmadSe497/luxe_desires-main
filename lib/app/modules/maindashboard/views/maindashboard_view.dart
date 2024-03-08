import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';

import '../controllers/maindashboard_controller.dart';

class MaindashboardView extends GetView<MaindashboardController> {
  const MaindashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.tabs[controller.currentTab.value]),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({super.key});
  final barController = Get.put(MaindashboardController());
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: DarkThemeColor.primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14.r),
          topRight: Radius.circular(14.r),
        ),
      ),
      height: 70.h,
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavItem(
              icon: Icons.home_outlined,
              isActive: barController.currentTab.value == 0,
              onTap: () {
                barController.currentTab.value = 0;
              },
              text: "Home",
            ),
            NavItem(
              icon: Icons.airplane_ticket,
              isActive: barController.currentTab.value == 1,
              onTap: () {
                barController.currentTab.value = 1;
              },
                text: "Tickets",
            ),
            NavItem(
              icon: Icons.music_note,
              isActive: barController.currentTab.value == 2,
              onTap: () {
                barController.currentTab.value = 2;
              }
              ,
              text: "Rewards",
            ),
            NavItem(
              icon: Icons.handshake,
              isActive: barController.currentTab.value == 3,
              onTap: () {
                barController.currentTab.value = 3;
              },
              text: "Join Team",
            ),
            NavItem(
              icon: Icons.settings,
              isActive: barController.currentTab.value == 4,
              onTap: () {
                barController.currentTab.value = 4;
              },
              text: "Setting",
            ),
          ],
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    super.key,
    required this.isActive,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  final IconData icon;
  final String text;
  final bool isActive;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
        ),
        alignment: Alignment.bottomCenter,
        // color: Colors.white,
        child: Column(
          children: [
            Icon(
              icon,
              size: 30.sp,
              color: isActive
                  ? DarkThemeColor.alternate
                  : DarkThemeColor.primaryBackground,
            ),
            Text(text,style: TextStyle(color: isActive
                ? Colors.white
                : Colors.black,))

          ],
        ),
      ),
    );
  }
}
