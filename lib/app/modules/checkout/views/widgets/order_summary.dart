import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';
import 'package:luxe_desires/app/modules/checkout/views/widgets/price_row.dart';
import 'package:luxe_desires/app/modules/order/controllers/order_controller.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;
    return GetBuilder(builder: (Cart cartController) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 12.h,
          ),
          Text(
            'Order Summary',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 4.h, 0, 0),
            child: Text(
              'Below is a list of your items.',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
          Divider(
            height: 32,
            thickness: 2,
            color:
                isDark ? DarkThemeColor.alternate : LightThemeColor.alternate,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12.h),
            child: Text(
              'Price Breakdown',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
          PriceRow(
              title: 'Base Price',
              value: cartController.totalAmount.toString()),
          const PriceRow(title: 'Taxes', value: '24.20'),
          const PriceRow(title: 'Cleaning Fee', value: '40.00'),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Total',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontFamily: 'Outfit',
                          color: !isDark
                              ? LightThemeColor.primaryText
                              : DarkThemeColor.secondaryText,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.info_outlined,
                      color: !isDark
                          ? LightThemeColor.primaryText
                          : DarkThemeColor.secondaryText,
                      size: 18.h,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ],
              ),
              Text(
                '\$${cartController.totalAmount + 64.20}',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          )
        ],
      );
    });
  }
}
