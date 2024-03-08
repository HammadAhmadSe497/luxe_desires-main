import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/modules/home/views/widgets/popular_widget.dart';
import 'package:luxe_desires/app/routes/app_pages.dart';

import '../controllers/musiclist_controller.dart';

class MusiclistView extends GetView<MusiclistController> {
  const MusiclistView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as bool?;
    final isAdmin = args ?? false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DarkThemeColor.primary,
        title: Text(
          'Music Streaming',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontFamily: 'Readex Pro',
                color: DarkThemeColor.alternate,
                fontSize: 19.sp,
              ),
        ),
        actions: [
          if (isAdmin)
            IconButton(
              onPressed: () {
                Get.toNamed(Routes.ADD_MUSIC);
              },
              icon: Icon(
                Icons.add,
                color: DarkThemeColor.alternate,
              ),
            )
        ],
        centerTitle: false,
        elevation: 4,
      ),
      body: ListView.builder(
          padding: EdgeInsets.fromLTRB(16.w, 20.h, 16.w, 0),
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 5,
          itemBuilder: (context, listViewIndex) {
            return const PopularWidget();
          }),
    );
  }
}
