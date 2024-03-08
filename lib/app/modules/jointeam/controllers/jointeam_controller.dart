import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JointeamController extends GetxController {
  final nameController = TextEditingController();
  final emailAddressController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final aboutController = TextEditingController();

  RxList<String> personInfoField = ['Name' , 'Surname', 'Email', 'Phone Number', 'Date Of Birth', ].obs;
  RxList<String> socialInfoField = ['About Me' , 'Facebook', 'Instagram', 'SoundCloud'].obs;

}