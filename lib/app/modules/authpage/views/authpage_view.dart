import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/modules/authpage/views/tabs/choice_tab.dart';
import 'package:luxe_desires/app/modules/authpage/views/tabs/login_tab.dart';
import 'package:luxe_desires/app/modules/authpage/views/tabs/signup_tab.dart';

import '../controllers/authpage_controller.dart';

check() {
  if (Get.arguments != null && Get.arguments.isNotEmpty) {
    if (Get.arguments[0] == "User") {
      return LoginTab();
    }else if (Get.arguments[0] == "new-User") {
      return SignUpTab();
    } else {
      return ChoiceTab();
    }
  } else {
    return ChoiceTab();
  }
}

class AuthpageView extends GetView<AuthpageController> {
  const AuthpageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF14181B),
      body: Container(
        width: 1.sw,
        height: 1.sh,
        decoration: BoxDecoration(
          // color: Color(0xFF14181B),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/imgs/authBg.png',
            ).image,
          ),
        ),
        child: Container(
          width: 100.h,
          height: 100.w,
          decoration: const BoxDecoration(
            color: Color(0x990F1113),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 150.h, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100.h,
                      ),
                      Image.asset(
                        'assets/imgs/Logo.png',
                        width: 100.w,
                        height: 100.h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  check(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, 0),
      child: TabBar(
        isScrollable: true,
        labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: 19.sp,
            ),
        unselectedLabelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: 19.sp,
            ),
        labelColor: DarkThemeColor.primary,
        unselectedLabelColor: DarkThemeColor.alternate,
        indicatorColor: Colors.transparent,
        labelPadding: EdgeInsetsDirectional.fromSTEB(10.w, 0, 10.w, 0),
        tabs: const [
          Tab(
            text: 'Sign In',
          ),
          Tab(
            text: 'Sign Up',
          ),
        ],
      ),
    );
  }
}
