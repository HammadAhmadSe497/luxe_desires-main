// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';
import 'package:luxe_desires/app/modules/order/controllers/order_controller.dart';

class ItemCounter extends GetView<OrderController> {
  final Product product;
  const ItemCounter({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;
    final Cart cartController = Get.find();

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GetBuilder(
                  key: ValueKey(product.id),
                  builder: (Cart cartController) {
                    // log(cartController.containItem(product.id).toString() +
                    //     "build" +
                    //     product.id);
                    return SizedBox(
                      height: 16.h,
                      width: 16.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.r),
                        child: Checkbox(
                          value: cartController.containItem(product.id),
                          onChanged: (value) {
                            log("${cartController
                                    .containItem(product.id)}button");
                            if (cartController.containItem(product.id)) {
                              log('true');
                              cartController.removeItem(product.id);
                            } else {
                              cartController.addItem(product.id, product);
                            }
                          },
                          side: BorderSide(
                              color: !isDark
                                  ? LightThemeColor.secondaryText
                                  : DarkThemeColor.secondaryText,
                              width: 2.w),
                          activeColor: !isDark
                              ? LightThemeColor.primary
                              : DarkThemeColor.primary,
                        ),
                      ),
                    );
                  }),
              SizedBox(
                width: 10.w,
              ),
              Text(
                product.title,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
          Container(
            width: 160,
            height: 30,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
              color: !isDark
                  ? LightThemeColor.secondaryBackground
                  : DarkThemeColor.secondaryBackground,
              borderRadius: BorderRadius.circular(8),
              shape: BoxShape.rectangle,
              border: Border.all(
                color: DarkThemeColor.alternate,
                width: 2,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Bounce(
                  duration: const Duration(milliseconds: 200),
                  onPressed: () {
                    cartController.removeSingleItem(product.id);
                  },
                  child: FaIcon(
                    FontAwesomeIcons.minus,
                    color: DarkThemeColor.alternate,
                    size: 10,
                  ),
                ),
                GetBuilder(
                    key: ValueKey(product.id),
                    builder: (Cart cartController) {
                    
                      return Text(
                        !cartController.containItem(product.id)
                            ? '0'
                            : cartController.items[product.id]!.quantity
                                .toString(),
                        style: Theme.of(context).textTheme.titleSmall,
                      );
                    }),
                Bounce(
                  duration: const Duration(milliseconds: 200),
                  onPressed: () {
                    cartController.addItem(product.id, product);
                  },
                  child: FaIcon(
                    FontAwesomeIcons.plus,
                    color: DarkThemeColor.primary,
                    size: 10,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
