import 'dart:convert';

import 'package:blockbd/api_service/url.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import '../homepage.dart';

class Registercontroller extends GetxController {
  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final pconfirmationcontroller = TextEditingController();

  @override
  void onInit() {
    registerapi();
    super.onInit();
  }

  void registerapi() async {
    try {
      final response = await post(
        Uri.parse(registerurl),
        body: {
          "name": namecontroller.value.text,
          "email": emailcontroller.value.text,
          "password": passwordcontroller.value.text,
          "password_confirmation": passwordcontroller.value.text,
        },
      );
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Get.snackbar("Register Sucess", "Congratulation");
        print(response.body);
        print("sucess");
        print(response.statusCode);
        Get.to(Homescreen());
      } else {
        print("Invalid");
        Get.snackbar("Register fail", "Please tyr agin");
      }
    } catch (e) {
      print("Faild");
    }
  }
}

/*
import 'dart:convert';

class Registercontroller extends GetxController {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  // final emailcontroller = TextEditingController().obs;
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController pconfirmationcontroller = TextEditingController();

  void registerapi() async {
    try {
      final response = await post(
        Uri.parse(
            "https://suman.thakbe.xyz/api/register?name=${namecontroller.text.trim()}
            &email=${emailcontroller.text.trim()}&password=${passwordcontroller.text.trim()}&password_confirmation=${pconfirmationcontroller.text.trim()}"),
        // headers: {"Accept": "application/json"}
//https://suman.thakbe.xyz/api/register?name=fahim&email=fahim@gamil.com&password=fahim155&password_confirmation=fah155

        //name=${namecontroller.text.trim()}&email=${emailcontroller.text.trim()}&password=${passwordcontroller.text.trim()}&password_confirmation=${passwordcontroller.text.trim()}"
        //  body: {
        //   "name": namecontroller.value.text,
        //   "email": emailcontroller.value.text,
        //   "password": passwordcontroller.value.text,
        //   "password_confirmation": pconfirmationcontroller.value.text,
        // }
      );
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Get.snackbar("Register sucess", "Congratulations",
            backgroundColor: Colors.amber[100]);
        print(response.statusCode);
        print(data);
        print("Account create sucessful");
        Get.to(Homescreen());
      } else
        () {
          Get.snackbar("Please Try agin", "Not create a account",
              backgroundColor: Colors.amber[100]);
        };
    } catch (e) {
      Get.snackbar("Excption", e.toString());
      print(e);
    }
  }

  signup() {
    Get.to(Homescreen());
  }
}

 */ 