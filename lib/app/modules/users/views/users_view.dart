import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';
import 'package:luxe_desires/app/modules/users/views/widgets/search_field.dart';
import 'package:luxe_desires/app/modules/users/views/widgets/user_widget.dart';

import '../controllers/users_controller.dart';

class UsersView extends GetView<UsersController> {
  const UsersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;

    return Scaffold(
      backgroundColor: !isDark
          ? LightThemeColor.secondaryBackground
          : DarkThemeColor.secondaryBackground,
      appBar: AppBar(
        backgroundColor: !isDark
            ? LightThemeColor.secondaryBackground
            : DarkThemeColor.secondaryBackground,
        automaticallyImplyLeading: true,
        title: Text(
          'Users',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontFamily: 'Readex Pro',
                color: !isDark
                    ? LightThemeColor.primaryText
                    : DarkThemeColor.alternate,
                fontSize: 19.sp,
              ),
        ),
        foregroundColor:
            !isDark ? LightThemeColor.primaryText : DarkThemeColor.alternate,
        centerTitle: false,
        elevation: 0,
      ),
      body: Column(
        children: [
          const SearchField(),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const UserWidget();
              },
            ),
          )
        ],
      ),
    );
  }
}
