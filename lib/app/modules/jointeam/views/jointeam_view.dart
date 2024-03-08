import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';
import 'package:luxe_desires/app/widgets/input_feild.dart';
import 'package:luxe_desires/app/widgets/submit_button.dart';

import '../controllers/jointeam_controller.dart';

class JointeamView extends GetView<JointeamController> {
  const JointeamView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;


    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://www.luxedesiresent.com/wp-content/uploads/2023/04/pexels-vishnu-r-nair-1105666-scaled.jpg"),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.w, 28.h, 24.w, 0),
            child: Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'HURRY UP!',
                    style: TextStyle(fontSize:30,color: Color(0xffccab51) ),
                  ),
                  const Text(
                    'Join the Team',
                    style: TextStyle(fontSize:16,color: Color(0xffccab51) ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Expanded(
                    flex: 1,
// child: Column(
//   children: [
                    child: ListView.builder(
                      itemCount: controller.personInfoField.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(2.h),
                          child: InputField(
                            labelText: controller.personInfoField[index],
// 'Phone Number'
                            validatior: (value) {
                              if (value.toString().isEmpty) {
                                return '';
                              }
                            },
                            bgColor: Colors.white,
                            bdColor: DarkThemeColor.alternate,
                            inputController: controller.phoneNumberController,
                            isContentPadding: false,
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 7.h),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text("Role:",style: TextStyle(color: DarkThemeColor.primaryBackground))),
                  ),Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Checkbox(
                              value: true,
                              fillColor: MaterialStateProperty.resolveWith<Color>(
                                    (states) {
                                  if (states.contains(MaterialState.selected)) {
                                    return Colors.blue;
                                  } else {
                                    return Colors.white;
                                  }
                                },
                              ),
                              semanticLabel: "Dj",
                              onChanged: (value) {},
                              visualDensity: const VisualDensity(vertical: -4,horizontal: -4),
                            ),
                            Text("DJ",style: TextStyle(color: DarkThemeColor.primaryBackground),),
                            Checkbox(
                              value: false,
                              fillColor: MaterialStateProperty.resolveWith<Color>(
                                    (states) {
                                  if (states.contains(MaterialState.selected)) {
                                    return Colors.blue;
                                  } else {
                                    return Colors.white;
                                  }
                                },
                              ),
                              onChanged: (value) {},
                              visualDensity: const VisualDensity(vertical: -4,horizontal: -4),
                            ),

                            Text("Host",style: TextStyle(color: DarkThemeColor.primaryBackground)),
                            Checkbox(
                              value: false,
                              fillColor: MaterialStateProperty.resolveWith<Color>(
                                    (states) {
                                  if (states.contains(MaterialState.selected)) {
                                    return Colors.blue;
                                  } else {
                                    return Colors.white;
                                  }
                                },
                              ),
                              onChanged: (value) {},
                              visualDensity: const VisualDensity(vertical: -4,horizontal: -4),
                            ),
                            Text("Entertainer",style: TextStyle(color: DarkThemeColor.primaryBackground)),
                            Checkbox(
                              value: false,
                              fillColor: MaterialStateProperty.resolveWith<Color>(
                                    (states) {
                                  if (states.contains(MaterialState.selected)) {
                                    return Colors.blue;
                                  } else {
                                    return Colors.white;
                                  }
                                },
                              ),
                              onChanged: (value) {},
                              visualDensity: const VisualDensity(vertical: -4,horizontal: -4),
                            ),
                            Text("Model",style: TextStyle(color: DarkThemeColor.primaryBackground ,fontWeight: FontWeight.w900
                            ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.socialInfoField.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:  EdgeInsets.only(bottom: 0 ,top: 2.h
                              ,left: 2.h,right: 2.h),
                          child: InputField(
                            labelText: controller.socialInfoField[index],
                            maxLines: index==0?2:1, //
// 'Phone Number'
                            validatior: (value) {
                              if (value.toString().isEmpty) {
                                return '';
                              }
                            },
                            bgColor: Colors.white,
                            bdColor: DarkThemeColor.alternate,
                            inputController: controller.phoneNumberController,
                            isContentPadding: false,
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(bottom: 10.h),
                    child: SubmitButton(
                      title: 'Send',
                      onTap: () async {},
                      width: 90.w,
                      height: 40.h,
                      textColor: DarkThemeColor.alternate,
                      bgColor: DarkThemeColor.primary,
// bdColor: LightThemeColor.accent4,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
