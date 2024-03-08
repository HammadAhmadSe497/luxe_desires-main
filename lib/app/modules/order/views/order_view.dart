import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/modules/order/views/components/gird_area.dart';
import 'package:luxe_desires/app/modules/order/views/components/info_form.dart';

import '../controllers/order_controller.dart';

class OrderView extends GetView<OrderController> {
  const OrderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DarkThemeColor.primary,
        title: Text(
          controller.isFood.value ? 'Food Menu' : 'Order Sesha',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.w, 28.h, 24.w, 0),
          child: const Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              GirdArea(),
              InfoForm(),
            ],
          ),
        ),
      ),
    );
  }
}
