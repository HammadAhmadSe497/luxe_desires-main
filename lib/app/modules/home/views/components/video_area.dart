import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';
import 'package:luxe_desires/app/modules/home/views/widgets/videoplayer_screen.dart';

class VideoArea extends StatelessWidget{
  const VideoArea({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;
    return Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 200.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: !isDark
                ? LightThemeColor.secondaryBackground
                : DarkThemeColor.secondaryBackground,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "WELCOME",
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 50,
                  ),
                  children: [
                    TextSpan(
                        text: '\n TO SOHO',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,

                        ),)
                  ]),
            ),
          ),
        ),
        // videos code
        //  InkWell(
        //   splashColor: Colors.transparent,
        //   focusColor: Colors.transparent,
        //   hoverColor: Colors.transparent,
        //   highlightColor: Colors.transparent,
        //   onTap: () async {
        //     Get.to(() => const VideoPlayerScreen(
        //         url:
        //             'https://assets.mixkit.co/videos/preview/mixkit-forest-stream-in-the-sunlight-529-large.mp4'));
        //   },
        //   child: InkWell(
        //     splashColor: Colors.transparent,
        //     focusColor: Colors.transparent,
        //     hoverColor: Colors.transparent,
        //     highlightColor: Colors.transparent,
        //     onTap: () async {
        //       Get.to(() => const VideoPlayerScreen(
        //           url:
        //               'https://assets.mixkit.co/videos/preview/mixkit-forest-stream-in-the-sunlight-529-large.mp4'));
        //     },
        //     child: Icon(
        //       Icons.play_circle_fill_outlined,
        //       color: !isDark
        //           ? LightThemeColor.alternate
        //           : DarkThemeColor.alternate,
        //       size: 60,
        //     ),
        //   ),
        // ),
        SizedBox(
          height: 15.h,
        ),
      ],
    );
  }
}

