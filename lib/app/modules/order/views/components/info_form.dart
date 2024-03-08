import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';
import 'package:luxe_desires/app/modules/order/controllers/order_controller.dart';
import 'package:luxe_desires/app/modules/order/views/widgets/item_counter.dart';
import 'package:luxe_desires/app/routes/app_pages.dart';
import 'package:luxe_desires/app/widgets/input_feild.dart';
import 'package:luxe_desires/app/widgets/submit_button.dart';

class InfoForm extends GetView<OrderController> {
  const InfoForm({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;
    return Form(
      child: Column(
        children: [
          InputField(
            labelText: 'Display Name',
            validatior: (value) {
              if (value.toString().isEmpty) {
                return '';
              }
            },
            bgColor: !isDark
                ? LightThemeColor.primaryBackground
                : DarkThemeColor.secondaryBackground,
            bdColor: DarkThemeColor.alternate,
            inputController: controller.nameController,
            isContentPadding: false,
          ),
          SizedBox(
            height: 12.h,
          ),
          InputField(
            labelText: 'Email Address',
            validatior: (value) {
              if (value.toString().isEmpty) {
                return '';
              }
            },
            bgColor: !isDark
                ? LightThemeColor.primaryBackground
                : DarkThemeColor.secondaryBackground,
            bdColor: DarkThemeColor.alternate,
            inputController: controller.emailAddressController,
            isContentPadding: false,
          ),
          SizedBox(
            height: 12.h,
          ),
          InputField(
            labelText: 'Phone Number',
            validatior: (value) {
              if (value.toString().isEmpty) {
                return '';
              }
            },
            bgColor: !isDark
                ? LightThemeColor.primaryBackground
                : DarkThemeColor.secondaryBackground,
            bdColor: DarkThemeColor.alternate,
            inputController: controller.phoneNumberController,
            isContentPadding: false,
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            controller.isFood.value ? 'Menu' : 'Sesha Flavors',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontFamily: 'Readex Pro',
                  fontSize: 18,
                ),
          ),
          SizedBox(
            height: 12.h,
          ),
          ListView.builder(
            itemCount: controller.isFood.value
                ? controller.foodProducts.length
                : controller.seshaProducts.length,
            shrinkWrap: true,
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              final product = controller.isFood.value
                  ? controller.foodProducts[index]
                  : controller.seshaProducts[index];
              return ItemCounter(
                product: product,
                key: ValueKey(product.id),
              );
            },
          ),
          SizedBox(
            height: 24.h,
          ),
          InputField(
            labelText: 'Any Instructions',
            validatior: (value) {
              if (value.toString().isEmpty) {
                return '';
              }
            },
            bgColor: !isDark
                ? LightThemeColor.primaryBackground
                : DarkThemeColor.secondaryBackground,
            bdColor: LightThemeColor.alternate,
            maxLines: 5,
            inputController: controller.instructController,
            isContentPadding: false,
          ),
          SizedBox(
            height: 24.h,
          ),
          SubmitButton(
            title: 'Send',
            onTap: () async {
              Get.toNamed(Routes.CHECKOUT);
            },
            width: 90.w,
            height: 40.h,
            textColor: DarkThemeColor.alternate,
            bgColor: DarkThemeColor.primary,
            // bdColor: LightThemeColor.accent4,
          ),
          SizedBox(
            height: 24.h,
          ),
        ],
      ),
    );
  }
}
