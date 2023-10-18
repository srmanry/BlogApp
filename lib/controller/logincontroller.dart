import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import '../api_service/url.dart';
import '../homepage.dart';
import '../screen/login/registerscreen.dart';

class Logincontroller extends GetxController {
  // final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  //final passwordcontroller = TextEditingController();

  RxBool loading = false.obs;
  @override
  void onInit() {
    loginapi();
    super.onInit();
  }

  void loginapi() async {
    loading.value = true;
    try {
      final response = await post(
        Uri.parse(loginurl),

        //name=${namecontroller.text.trim()}&email=${emailcontroller.text.trim()}&password=${passwordcontroller.text.trim()}&password_confirmation=${passwordcontroller.text.trim()}"

        body: {
          "email": emailcontroller.value.text,
          "password": passwordcontroller.value.text,
        },
      );

      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);

      if (response.statusCode == 200) {
        Get.snackbar("Login sucess", "Congratulations");
        loading.value = false;
        Get.to(Homescreen());
      } else {
        loading.value = false;
        Get.snackbar("Login Faild ", "Please try agin");
      }
    } catch (e) {
      loading.value = false;
      Get.snackbar("Excption", e.toString());
      print("catch");
    }
  }
}
