import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/routes/app_pages.dart';
import 'package:luxe_desires/app/widgets/submit_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/shop_controller.dart';

class ShopView extends GetView<ShopController> {
  const ShopView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DarkThemeColor.primary,
        title: Text(
          'Shop',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontFamily: 'Readex Pro',
                color: DarkThemeColor.alternate,
                fontSize: 19.sp,
              ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 4,
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(24.w, 28.h, 24.w, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Lorem ipsum dolor sit amet consectetur adipiscing elit laoreet auctor tristique penatibus, proin mollis porttitor habitant morbi pulvinar integer ad eget nostra gravida, fusce eleifend sapien cubilia massa ut arcu metus fermentum a. Blandit nulla eget mus torquent fringilla egestas convallis sollicitudin justo vestibulum congue nullam luctus',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              height: 24.h,
            ),
            SubmitButton(
              title: 'Checkout',
              onTap: () async {
                Get.toNamed(Routes.CHECKOUT);
              },
              width: 170.w,
              height: 40.h,
              textColor: DarkThemeColor.alternate,
              bgColor: DarkThemeColor.primary,
              // bdColor: LightThemeColor.accent4,
            ),
            SizedBox(
              height: 24.h,
            ),
            SubmitButton(
              title: 'Go to our Shop',
              onTap: () async {
                final url = Uri.parse('https://www.luxedesiresent.com/');
                if (!await launchUrl(url,
                    mode: LaunchMode.externalApplication)) {
                  throw Exception('Could not launch $url');
                }
              },
              width: 170.w,
              height: 40.h,
              textColor: DarkThemeColor.alternate,
              bgColor: DarkThemeColor.primary,
              // bdColor: LightThemeColor.accent4,
            ),
          ],
        ),
      ),
    );
  }
}
