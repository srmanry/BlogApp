import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:http/http.dart';

import '../homepage.dart';

class Registercontroller extends GetxController {
  final emailcontroller = TextEditingController().obs;
  final passwordcontroller = TextEditingController().obs;

  void registerapi() async {
    try {
      final response =
          await post(Uri.parse("https://reqres.in/api/register"), body: {
        "email": emailcontroller.value.text,
        "password": passwordcontroller.value.text,
      });
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Get.snackbar("Register sucess", "Congratulations",
            backgroundColor: Colors.amber[100]);
        print("Account create sucessful");
        Get.to(Homescreen());
      } else
        () {
          Get.snackbar("Please Try agin", "Not create a account",
              backgroundColor: Colors.amber[100]);
        };
    } catch (e) {
      Get.snackbar("Excption", e.toString());
    }
  }

  signup() {
    Get.to(Homescreen());
  }
}
