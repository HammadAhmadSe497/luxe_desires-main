import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';
import 'package:luxe_desires/app/modules/order/controllers/order_controller.dart';

class GirdArea extends GetView<OrderController> {
  const GirdArea({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;
    return Column(
      children: [
        Text(
          '12Lorem ipsum dolor sit amet consectetur adipiscing elit laoreet auctor tristique penatibus, proin mollis porttitor habitant morbi pulvinar integer ad eget nostra gravida, fusce eleifend sapien cubilia massa ut arcu metus fermentum a. Blandit nulla eget mus torquent fringilla egestas convallis sollicitudin justo vestibulum congue nullam luctus',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          controller.isFood.value ? 'Menu' : 'Sesha Flavors',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontFamily: 'Readex Pro',
                fontSize: 28.sp,
                fontWeight: FontWeight.w600,
              ),
        ),
        GridView.builder(
            itemCount: controller.isFood.value
                ? controller.foodProducts.length
                : controller.seshaProducts.length,
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.w,
              mainAxisSpacing: 10.h,
              childAspectRatio: 1.2,
            ),
            shrinkWrap: true,
            primary: false,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              final product = controller.isFood.value
                  ? controller.foodProducts[index]
                  : controller.seshaProducts[index];
              return Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    controller.isFood.value
                        ? Icons.food_bank
                        : FontAwesomeIcons.smoking,
                    color: isDark
                        ? DarkThemeColor.primary
                        : LightThemeColor.primary,
                    size: 64.sp,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    product.title,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'Readex Pro',
                          fontSize: 18.sp,
                        ),
                  ),
                ],
              );
            }),
        SizedBox(
          height: 24.h,
        ),
      ],
    );
  }
}
