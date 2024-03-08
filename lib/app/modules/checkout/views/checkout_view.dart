// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';
import 'package:luxe_desires/app/modules/checkout/views/widgets/cartitem_widget.dart';
import 'package:luxe_desires/app/modules/checkout/views/widgets/order_summary.dart';
import 'package:luxe_desires/app/modules/order/controllers/order_controller.dart';
import 'package:luxe_desires/app/widgets/submit_button.dart';

import '../controllers/checkout_controller.dart';

class CheckoutView extends GetView<CheckoutController> {
  const CheckoutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;
    final Cart cartController = Get.put(Cart());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: true,
          foregroundColor:
              !isDark ? LightThemeColor.primaryText : DarkThemeColor.alternate,
          centerTitle: false,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: isDark
                        ? DarkThemeColor.secondaryBackground
                        : LightThemeColor.secondaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  padding: EdgeInsetsDirectional.all(
                    16.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Cart',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0, 4.h, 0, 12.h),
                        child: Text(
                          'Below is the list of items in your cart.',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                      GetBuilder(builder: (Cart cartController) {
                        return ListView.builder(
                            shrinkWrap: true,
                            itemCount:
                                cartController.items.values.toList().length,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              final CartItem cartItem =
                                  cartController.items.values.toList()[index];
                              return CartItemWidget(
                                cartItem: cartItem,
                              );
                            });
                      }),
                      OrderSummary(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                SubmitButton(
                  title: 'Continue to Checkout',
                  onTap: () {
                    Get.back();
                  },

                  height: 50.h,
                  bdRadius: 50.r,
                  textColor: DarkThemeColor.alternate,
                  bgColor: DarkThemeColor.primary,
                  // bdColor: LightThemeColor.accent4,
                ),
                SizedBox(
                  height: 30.h,
                )
              ],
            ),
          ),
        ));
  }
}
