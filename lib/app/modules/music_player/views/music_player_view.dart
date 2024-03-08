import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';

import '../controllers/music_player_controller.dart';

class MusicPlayerView extends GetView<MusicPlayerController> {
  const MusicPlayerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor:
            !isDark ? LightThemeColor.primaryText : DarkThemeColor.alternate,
      ),
      body: SafeArea(
        child: SizedBox(
          width: 1.sw,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 280.w,
                height: 350.h,
                decoration: BoxDecoration(
                  color: !isDark
                      ? LightThemeColor.secondaryBackground
                      : DarkThemeColor.secondaryBackground,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 9,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                      spreadRadius: 8,
                    )
                  ],
                  borderRadius: BorderRadius.circular(26),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(26),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1525824236856-8c0a31dfe3be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8d2F0ZXJmYWxsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Iron Duind',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: !isDark
                          ? LightThemeColor.primaryText
                          : DarkThemeColor.alternate,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                decoration: BoxDecoration(
                    color: !isDark
                        ? LightThemeColor.secondaryBackground
                        : DarkThemeColor.secondaryBackground,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        '[musicName]',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      subtitle: Text(
                        '00:00/00:00',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      trailing: Bounce(
                        duration: const Duration(milliseconds: 200),
                        onPressed: () {},
                        child: Container(
                          height: 30.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                            color: isDark
                                ? DarkThemeColor.primary
                                : LightThemeColor.primary,
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.play_arrow,
                            color: isDark
                                ? DarkThemeColor.secondaryBackground
                                : LightThemeColor.secondaryBackground,
                            size: 20.h,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width,
                      height: Get.height * 0.03,
                      child: Slider(
                        min: 0.0,
                        max: 10,
                        value: 0,
                        activeColor: isDark
                            ? DarkThemeColor.primary
                            : LightThemeColor.primary,
                        inactiveColor: isDark
                            ? DarkThemeColor.alternate
                            : LightThemeColor.primaryBackground,
                        onChanged: (value) async {},
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
