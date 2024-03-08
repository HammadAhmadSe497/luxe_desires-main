import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';
import 'package:luxe_desires/app/routes/app_pages.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;

    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Container(
        width: double.infinity,
        height: 80.h,
        padding: EdgeInsetsDirectional.all(8.h),
        decoration: BoxDecoration(
          color: !isDark
              ? LightThemeColor.secondaryBackground
              : DarkThemeColor.secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x520E151B),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,w_440/cf6886fd-72b6-4a08-a3a8-bb5a92508fd0/air-max-270-mens-shoes-KkLcGR.png',
                width: 50.w,
                height: 50.h,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.w, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '[Name]',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Text(
                        '[yMMMd]',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20.w, 0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  // context.pushNamed(
                  //   'MusicPlayer',
                  //   queryParameters: {
                  //     'musicName': serializeParam(
                  //       listViewMusicRecord.name,
                  //       ParamType.String,
                  //     ),
                  //     'musicPicture': serializeParam(
                  //       listViewMusicRecord.audioImage,
                  //       ParamType.String,
                  //     ),
                  //     'musicAudio': serializeParam(
                  //       listViewMusicRecord.audioPath,
                  //       ParamType.String,
                  //     ),
                  //     'artistName': serializeParam(
                  //       listViewMusicRecord.artistName,
                  //       ParamType.String,
                  //     ),
                  //   }.withoutNulls,
                  //   extra: <String, dynamic>{
                  //     kTransitionInfoKey: TransitionInfo(
                  //       hasTransition: true,
                  //       transitionType: PageTransitionType.bottomToTop,
                  //     ),
                  //   },
                  // );
                  Get.toNamed(Routes.MUSIC_PLAYER);
                },
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: !isDark
                      ? LightThemeColor.primary
                      : DarkThemeColor.primary,
                  size: 34,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
