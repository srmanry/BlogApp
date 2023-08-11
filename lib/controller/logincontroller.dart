import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import '../homepage.dart';
import '../screen/login/registerscreen.dart';
import 'package:http/http.dart' as http;

class Logincontroller extends GetxController {
  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  //final passwordcontroller = TextEditingController();

  RxBool loading = false.obs;
  void loginapi() async {
    loading.value = true;
    try {
      final response = await post(
        Uri.parse(
            "https://suman.thakbe.xyz/api/register?name=${namecontroller.text.trim()}&email=${emailcontroller.text.trim()}&password=${passwordcontroller.text.trim()}&password_confirmation=${passwordcontroller.text.trim()}"),
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
        Get.snackbar("Faild ", "Please try agin");
      }
    } catch (e) {
      loading.value = false;
      Get.snackbar("Excption", e.toString());
      print(e);
    }
  }
}

Map<String, String> header = {
  'Content-Type': 'application/json; charset=UTF-8',
  'Accept': 'application/json',
};

postWork(
    {required String emaile,
    required String name,
    required String password}) async {
  final User_url = Uri.parse(
      "https://suman.thakbe.xyz/api/register?name=$name&email=$emaile&password=$password&password_confirmation=$password");
  http.Response reponse = await http.post(User_url, headers: header, body: {});
  if (reponse.statusCode == 200) {
    print("sucess ");
    print(reponse.body);
  } else {
    print(reponse.statusCode);
  }
}

signup() {
  Get.to(Registerscreen());
}
