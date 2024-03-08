import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';
import 'package:luxe_desires/app/widgets/input_feild.dart';
import 'package:luxe_desires/app/widgets/submit_button.dart';

import '../../../constants/app_color.dart';
import '../controllers/add_music_controller.dart';

class AddMusicView extends GetView<AddMusicController> {
  const AddMusicView({Key? key}) : super(key: key);
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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Add Music',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  'Please enter the information below to add a new music.',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  width: double.infinity,
                  height: 250.h,
                  decoration: BoxDecoration(
                    color: !isDark
                        ? LightThemeColor.alternate
                        : DarkThemeColor.alternate,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {},
                    child: Stack(
                      alignment: const AlignmentDirectional(0, 0),
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_a_photo_outlined,
                              color: !isDark
                                  ? LightThemeColor.secondaryText
                                  : DarkThemeColor.secondaryText,
                              size: 72,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 12, 0, 0),
                              child: Text(
                                'Add Photo',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 4, 0, 0),
                              child: Text(
                                'Upload an image here...',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                          ],
                        ),
                        // Padding(
                        //   padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        //   child: ClipRRect(
                        //     borderRadius: BorderRadius.circular(10),
                        //     child: CachedNetworkImage(
                        //       fadeInDuration: Duration(milliseconds: 500),
                        //       fadeOutDuration: Duration(milliseconds: 500),
                        //       imageUrl: _model.uploadedFileUrl1,
                        //       width: double.infinity,
                        //       height: double.infinity,
                        //       fit: BoxFit.cover,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                InputField(
                  labelText: 'Music Name',
                  validatior: (value) {
                    if (value.toString().isEmpty) {
                      return '';
                    }
                  },
                  inputController: controller.nameController,
                  bgColor: Colors.transparent,
                  bdColor: LightThemeColor.alternate,
                ),
                SizedBox(
                  height: 16.h,
                ),
                InputField(
                  labelText: 'Music Description',
                  validatior: (value) {
                    if (value.toString().isEmpty) {
                      return '';
                    }
                  },
                  inputController: controller.descController,
                  bgColor: Colors.transparent,
                  bdColor: LightThemeColor.alternate,
                  maxLines: 5,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Bounce(
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
                        Icons.add,
                        color: isDark
                            ? DarkThemeColor.secondaryBackground
                            : LightThemeColor.secondaryBackground,
                        size: 20.h,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
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
                ),
                SizedBox(
                  height: 32.h,
                ),
                InputField(
                  labelText: 'Artist of the Music',
                  validatior: (value) {
                    if (value.toString().isEmpty) {
                      return '';
                    }
                  },
                  inputController: controller.artistController,
                  bgColor: Colors.transparent,
                  bdColor: LightThemeColor.alternate,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SubmitButton(
                    title: 'Create Showcase',
                    onTap: () {},
                    height: 50.h,
                    width: 160.w,
                    bdRadius: 40.r,
                    bgColor: isDark
                        ? DarkThemeColor.primary
                        : LightThemeColor.primary,
                    textColor: DarkThemeColor.alternate,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
              ],
            ),
          ),
        ));
  }
}
