import 'package:blockbd/api_service/repostitory/constant.dart';
import 'package:blockbd/homepage.dart';
import 'package:get/get.dart';

import '../../models/api_response.dart';
import 'package:http/http.dart' as http;

Future<ApiResponse> login(String email, String password) async {
  ApiResponse apiResponse = ApiResponse();
  try {
    final response = await http.post(
      Uri.parse(loginurl),
      headers: {
        "Accept": "Application/json",
      },
    );
    if (response.statusCode == 200) {
      Get.snackbar("Login sucess", "Congratulations");

      Get.to(Homescreen());
    } else {
      Get.snackbar("Faild ", "Please try agin");
    }
  } catch (e) {
    Get.snackbar("Excption", e.toString());
    print(e);
  }
  return apiResponse;
}
